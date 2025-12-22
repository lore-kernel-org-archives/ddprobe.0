Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3209C215055
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766366634; cv=none; b=OgpNun6qrpxI2XRguPqhtCzF14LuiDliwb/VfTpBPVIgW7xigRftFm+zeDhfA6giQ2CE1I5Dz6YASbs2awocKYCwSEpWxAToQ9+Td73G1R7IRN499+oDIPnA84dGeUaWWqhJn+pqGx+VNFVWCeZMXwH18EJG/YwKXK6M5nVIz1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766366634; c=relaxed/simple;
	bh=DJjKKqtb8ZYqLc9WpflSeVNUHhUrCybcP/oWG1o4f88=;
	h=To:Subject:From:Message-Id:Date; b=gyfGmD9f0OypWXRxJVfxcAZ2g0JvdMijWEtYjMC5eLGSxBRCAKf6sEDGmS0+tEOLo/G8C0z5mMsIS8iJl80UKJR3Q5E17lStZybfO7ot9QpkgSlIK3zDsrXqJ/B4W4wzF7k69J7KcZfJaxwHvm88EpwBjDiy6v2EBEzhf9FoJOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfJk9p0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfJk9p0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FA4C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766366633;
	bh=DJjKKqtb8ZYqLc9WpflSeVNUHhUrCybcP/oWG1o4f88=;
	h=To:Subject:From:Date:From;
	b=SfJk9p0AxZ9u+dW4XaePSfWUA+goFfST6jymlIuQU6gJUH4ovoNdGFvC85a9rcpfy
	 nMoooElYRP/KDp/aas1R75T55SYCg6kq58juUrw1HdJzzCoHpHQpYOJEwZyFdsRnXL
	 s6D0VsEjrey0zbC05KRJSRBc7AHKLBuggFwiUgERrLVJU5anGgmGVq97XMPICLmUtL
	 PbM9IpVWA7xSzEdtjRNg908XEe85cy4xLusRgLnfyCvYNBMaJJ3KuRijSN8U8ZufoK
	 ln8MxIhKaH07tVRnW3WvFLd1K+cGlXoHPO9eZas5ZrD6SNW4seiQmG0qJnR2xCEPH2
	 lvSbZloo8VY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9557CD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636663358.27753.12010181729332689333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc67b53a216f3d1cd927196ebd0a93faab682e6f3938513b3d693c71585bb3b7
Date: Mon, 22 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766366633
