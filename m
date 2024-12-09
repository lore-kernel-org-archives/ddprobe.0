Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30511155751
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733729754; cv=none; b=pNxtDtRh4IA+3aGiIaAVn2mbmXJBnSNlhItLW+SRjogFHqjhxroKem/AeFDhkzuCi8fr4dVPygBxTD86hTo8L7Ew/Xj4T4gYfC2BDs9OPO/sWOKZ2lcNZTNTvzVTtiftCoNdrpOchInrQPatolb+5LUelnkViDFrKqUpGREbvNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733729754; c=relaxed/simple;
	bh=iRwmeynC3nOQF/bCvrRz80q+eRLMCGLpjGA0vgFXTU0=;
	h=To:Subject:From:Message-Id:Date; b=qthWtOBYuzM0Zn1Pq/BvFXu2HzZRuTsETsvSXFOQ3f06Yg8nNC/JHV9DFUPnfsXTRsvnH/sMCVZgQOtGdUhOCsGbcWbLVXW0dmW7BzbCYbfxBUm9U49ZSkFz8Etu+uV3Y4pPpgWaB8yAxlKS7bl3R0HZO3bQb0ba5VWEIqqCBuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1PGhYKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1PGhYKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A664DC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733729753;
	bh=iRwmeynC3nOQF/bCvrRz80q+eRLMCGLpjGA0vgFXTU0=;
	h=To:Subject:From:Date:From;
	b=m1PGhYKN7NM5zrMpoqhhrsJZFpnbpMfNv2DYnfEeQYLof8GpOeFl/RRrIXvG9nB8I
	 NbhrYJuJonmRmpw3wlUFy5D2+sRvAYix/A1PyhufhKfuaMcHn8aXqMul8ZU113oCq/
	 O5rNOrq+W+IOoTZTcYgZjN0xPetkVeSHRd+dmewfCId++uxLZG6OHILBuc2RPixxVm
	 tTbK8VlALlR2GxlnWqTyd7QEmG9LVOl+7DyJO8HFbv3lOM3v8CtA4p6F8B97EYUPie
	 NGdQZrd/jMB1BQSeSjW1swye8MqYn/PexriypMKoEj2RqUvQYLg/K026wYr78VIsV3
	 XsEBobEBGSfCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C4E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372975359.18817.8626046502880457343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310d91fa34085906d5dbe817e8921fcae5bfa82e05e4819816d492cd63356b89
Date: Mon, 09 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733729753
