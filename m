Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD325CC40
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762003794; cv=none; b=dnnKTEgdanzdUbjW1AIRBa86zUrdCvKi441TlvvbQBnefbkKFEMeXawCaKjkjiqqywEEhPFkZhGBG5xIN9fpEAWf3clrPEBLUY6K8OgIZvtEaMGWk53arT0gWcQYEhMskgC5Nvz7xVu5yrKRl6HcxvijJkKcGdcWVnya/Eu1v1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762003794; c=relaxed/simple;
	bh=l/BIFCBMx/tj6Uhlyt0V8UiCKnnzMMJRT47BIUo0fLQ=;
	h=To:Subject:From:Message-Id:Date; b=Y+a6P2knCqkX+0ZQjcolPnfmVqEn3hzHaYJbgIwbq5eEeVEnnbQRLj0yUjn5EiQAdjex2Z96rGj6IrHw7z5BuoOoao5vKKSDnsj19bASA8zzuMYtG88a11qo2w+lyM/B0b2EtMDu692+VdcHepLlTOU1oo9odrS+xI1OgBTjN00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLZ3VBaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLZ3VBaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9293C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762003793;
	bh=l/BIFCBMx/tj6Uhlyt0V8UiCKnnzMMJRT47BIUo0fLQ=;
	h=To:Subject:From:Date:From;
	b=TLZ3VBaYZSbgTx3Ww1mhGbBeKIkNis4JxS7vxW0wEoteLJsD0L7ZWMY+JdyZQpvZB
	 2EtDRBhu0IdYPcw0POq9gUqXsUo2LL1XdNUcP7EGFkkW5dJ19sYUSZrsCH40FPtc04
	 50x9n5he1Gh/eXc9tktUkS685z7VxvUAOuR57mGSki1jlOmCmhMHok17lGpKbzbSoA
	 PfMnPo9BbQ82wfOnI15/qzLeB5GU8LXGvUUlV89evHJQd28bf1RoSTd4TRrfKr1hqj
	 67nfT+2g7E8K/1RkzTJ3LdXV7FawzMjGs4JkJTJYE42N0zSq3ZySi7jqeds1N+wpa+
	 pyBaQVDhh4i4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FE3CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200379358.10661.3969393867211764080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b4c8e4533a448622c8d5e1d98cfbbe8ef098e129b1320f82107bd50c5d8b34
Date: Sat, 01 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762003793
