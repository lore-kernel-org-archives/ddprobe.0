Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9B2370AF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785525634; cv=none; b=bTR9x9KFnJf8Etmr+jNQT9OtjFfRgi9/ypTioxUA6UXZxjsAjZP2OUUkWbmxyE9/P7EmHGYb+iGdzVv7tRdrirUj3Z40s5IcOqwFPNdSbjGTyAmNyy5Chr8rUkxlqMbz0RviALDIHk0QllLkr7d95oGlfpQiak/1DxER2Oiolmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785525634; c=relaxed/simple;
	bh=hOwfKnMA6oNlS4UD4nj4pnCwn8Md6jQg4BlvPNmZ0vo=;
	h=To:Subject:From:Message-Id:Date; b=cEeiMhtJc40ouXLQ60/NaCGvadtArPUWcnA+W8kVN//vz8ICS5oa3EWdWHNBAU/n/ED2WYcFV7VDRrOjADsiJ7ONVzIhFSK27z1Gnm7t4DrOjOgv6wSXvetijRbUozMKxrr5kT7HvplCD0J5IVAWj8WXLqOhJQXLn+rd+nz/9R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcAyxenN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcAyxenN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8FDC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785525633;
	bh=hOwfKnMA6oNlS4UD4nj4pnCwn8Md6jQg4BlvPNmZ0vo=;
	h=To:Subject:From:Date:From;
	b=ZcAyxenN3hZJwKevAc2dz8JwQIeJ7DSctrgIInd5PZAIJEMFuxZFJYz4EhQzuPRIu
	 Jylh4whOlYDlRNl+Lta82Xmtn+76/zyFCbCkFCGxGLYM1Y4GgdHAVmOYp47VGSnbNj
	 /JBBTmmaeUKcZyP+H/3BJpzhcdQvbZHczUi1CsteO9TruXSduTcVqMlSyIgUbluudY
	 0Ug85JBzKArboY4X9s7kfxmsI7R4SCpaypLFz/porIPFct+Wp7Rbzt36GpluzCH5qm
	 eqNmzXaS/w5L3jlHNIawXvvqV7V366AizBhy/w2OQ6u1Y7qHR1AjzL6SvA1lYd4//Y
	 6J3ea1kqWjNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA90C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552563368.2467.16267166903072555699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb071164eed1567cf60068b8f2797aece4583b733cf195e77382a8468fab2ecf
Date: Fri, 31 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785525633
