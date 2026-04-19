Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D8821D3E4
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776631054; cv=none; b=EkbidGeWxQas8I4NyTN3YUjNAzZoytYhQtkKh58PyxjlPeccSLCM542dyap4lbOCcDDe+HNdOmX7rBTUVgOTOLUpA/l/lzSjK1f8tfd6lbuPMmYxirug/P/CeFyTRAQiO3mpt7PxXlqsUzeEWbB+2Zv1ENJAZERnVG2/rNe1oHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776631054; c=relaxed/simple;
	bh=a8W8Ne7OHdvQxgyG+b5oh7faH9zUbDRFZizhBEjC9dQ=;
	h=To:Subject:From:Message-Id:Date; b=EHkbssg9q/79M6VikXrJUxPESaCR87EW7jim7tOL/fZwOp72BrugD0CS5cY8++8qgQDP5tihDZk0LjUdefVc7AYAjFRivLmKhVZrp7o8SFWi01KK+SpQotjNdw1xCV9EJq6BAXzzGd0Ok/LxTnm38Zt1A9sGXZBcI4/aOeDXDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QshSRdX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QshSRdX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B36C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776631053;
	bh=a8W8Ne7OHdvQxgyG+b5oh7faH9zUbDRFZizhBEjC9dQ=;
	h=To:Subject:From:Date:From;
	b=QshSRdX4tf8XLmFfMt17DgDy7nnSTW0gHqF7/k7FGYNp+QOa3AI+Tqv187pc8VGHQ
	 N0u3ivOJQZn+AQrwquvtaAc8inBcYmwjhGbwtyBeqH7V2UZKcVEi05Qa2lTB097PSn
	 hxUeZMsM/adVe8ySwxb0sf2QM0MdwVKX8Hqzi3gfDZTKzuoVuYl0mMTXFWYWJWNNYn
	 Ns57fVRfgUeemOgbWzvDGR0nT8CM1iNkztAhXmBnxkS3/uBrv0o18QEbTp5IqgkfyP
	 hSVI/bJ7jqHIHC2saLb33fJ65X+Y74gm3Drh80nyI8laMNWpIncl/8WbDvHsXQaLlp
	 Jk2H4s5PTnGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E8BEA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663105369.15916.5209657137178031588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc9b9bd738b6a8dd205f6532e05650416c1ee161385e546c1a7883cc47a3afb
Date: Sun, 19 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776631053
