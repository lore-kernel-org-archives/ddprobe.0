Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30812331A66
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778294254; cv=none; b=KMJhZiUQypnesS9lgREftS1pKbIifKkc+Gi8D6VHBkXdSjTVs8NdLW8qiNZ39DVnx/uDIvtqb/M67WD1+KkWCYjSWJK8+7IGfmCkp/iSkq0N6Lpq71gKAuP2Y+DSmD/aob0iwWdB8Eu4GVDuV+T/lWoB1WLkQhPEZFTOC/n7/Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778294254; c=relaxed/simple;
	bh=/qHm8y3/xZ5EO9hsnIPFNwfxYu4esnRBsh3oOW57cOk=;
	h=To:Subject:From:Message-Id:Date; b=LMpmurxOCxWoGKJ2KH7S8Xkk9AELaXwUl/w8iLrDr5f+30/rjmx2RA11r3EexJqQTT2wLhxe7pUWAiNuDrh01G3+7hmIRThMFL2TTDIrf88beLpvKnawkBKQwpEFcDts87oiVdW7+BQh2/maVdIz2jrqrJSLZ9UkF85w6ywD1eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ5dNc9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ5dNc9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EE3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778294253;
	bh=/qHm8y3/xZ5EO9hsnIPFNwfxYu4esnRBsh3oOW57cOk=;
	h=To:Subject:From:Date:From;
	b=eJ5dNc9cTMl7dXExcoR0DKvabp0Zpj7DW1IJ1mvp3TRcoOa2T/OeN2cpWaFwhw34m
	 Sd5d7FNu1Jr7C9zSo0pLuHyUMKyoE3+YrQLsnETEfOOFLENb3lPLc8wxvQsedWZQ0N
	 o8Wt1lfKniR+ycCSuwUXs+NBrA29z9x9SFJ30z69ICDNJ9n37yLoOGVQdz8mBs9X4C
	 Ek04nNvD4A91rRXF36WSNiD/VSSjFlknVY+IVEotbgYeCw9UsSiDVWURpR0Bnf47zU
	 11GQem0FFMgz5Abow585U7VcM42R0iz+g409bD7J4fFdaAj6P+qVmVatSNgc5HiW57
	 9F9ZZsNUjc1wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B3CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829425369.12269.12789803391389067140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb9394f1e47010965199dd231f7798c3c95f68ca759675bbe0a0b22993a882c
Date: Sat, 09 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778294253
