Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A198236453
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747912795; cv=none; b=MWyit4x++iTwGPYeJy/T/Ajqeyp81nSk2oNjfCMPExch/CUFCuUP7oZz/hm/Ken5YWCNcG8H3VZ5fGAICCRIuHtyDUlDxZzOuB5gcrncUE5ELrQFqyiIrSRJLvNbFJ4RVysw/4AcgSY0dmKM6/o7jOTHXNl8KNID7qXQ4Jn3XwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747912795; c=relaxed/simple;
	bh=ew8nyfAYWJc2atm+D4sS1dVKnb6IBv8UXw6OCsRVrSg=;
	h=To:Subject:From:Message-Id:Date; b=Ec8e4sbdq+k5oiKLRj1S4p2IMrFqvr3JsmJ/THONmiGOBseRWei1rsZ/npBR3t4S1VhGzUqYx49GQxocx4vm0waC58iBtRLsMer2fE/xDhc5Za3bGEh1x/bEgf5LxQWph9Cjd0f22doN+vrJd1j0VEpYh+o52QdKmHtRal5Rvrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHcJtH1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHcJtH1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9608DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747912793;
	bh=ew8nyfAYWJc2atm+D4sS1dVKnb6IBv8UXw6OCsRVrSg=;
	h=To:Subject:From:Date:From;
	b=HHcJtH1VvrsOW9S0M0K0i5zc7wvKnicr9P0jMX+CFkJtrL62f6MpYmqSG/tSyfS24
	 5OKT/iyxnNEz/sGCK6un+klsIljJjVQvnOM81GsY5roJAZYisJM0giPfKLQM81/xSQ
	 hoE9XM+WuQulF9GlcDbLRJrDqCI7DMpnKzylQU9rDT5KasrrN4MvtT2kcXr6OcIYmh
	 8xsBiQHOSvdcZiEsnaj4pmPhryflgoGKMXRfHPFBOF8gRJGElGRBZqgNcEjQOYRJ3U
	 j758skaWZeWtEctqwiEdiL4K92XJO8FpGBX8KKvYn0v+vHCvfn7p02pvuB5Tv/HlJe
	 jpgZf6CUNq5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB37C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791279357.3621.5141909996448019424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ffad51e82703402e9360043ee41da786993b8c971a272cd7ad0aeabaa9ed24
Date: Thu, 22 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747912793
