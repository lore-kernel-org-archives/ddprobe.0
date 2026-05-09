Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A7E800
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778323054; cv=none; b=AyfhtFbM4eRhf/BfWUJUk62qfDGMI/Nm0YlJaknfAs8xH8E307e7EhtInspOpDm1gHYEJBP/YGu/RKB8UR+8ap7mAqKiWWeMDPUEw1QxQ8ObJif/X4bZL2SyYOvt2S9F7u9VvykO2BLSE2T7LanIKqk18sRRoHlP/WuyAlvUmQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778323054; c=relaxed/simple;
	bh=L7LSnhYXy66Oz4D+V/y/OlGJ9m1ye4WMnHcdd2ntTK0=;
	h=To:Subject:From:Message-Id:Date; b=SWOIpGQ3tptxPUI2UxUuxJrtCYzqFyJ7d50ksQQEHTrpfpC/Pb4x2iW55VBuUTQXfnh0qUseaISt0FO4AJxXFdh5vm3TpLblTTv+krH/+XNLdhpezs3hPUEixa/7uyi+f0t/hUccRJTRUKV7KnbAciq+53x5g4bt9OAKO8P74qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDdvFiRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDdvFiRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 538B4C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778323054;
	bh=L7LSnhYXy66Oz4D+V/y/OlGJ9m1ye4WMnHcdd2ntTK0=;
	h=To:Subject:From:Date:From;
	b=aDdvFiRBW0aPAhGMQDgF8VjIzklpUUvNm9HvmvYXK4S/Yix1J1d2VQZEFadNIpK/t
	 1Xsj7aipQbHPZ5wsbRyhLMtezaeIExFU5Y2w7Uz+/el790JJAUgn+8qLPxhnC20pOc
	 FLVri3CH8s7VHt/kxuVhtcoLA1pTaP6qJsV0l2p4ruH2x35XCI+YOosFlmMCtxPoVG
	 ErNwmlB9eIZpOgvx1Xd1AaJ50igjZoGz7OmPdw9yNVN7R9VdClpchfL6DJffp0s4a4
	 p4GjqvGQWqfYUVhicg06I0f9MWCZh5r0lA5sJ53n/pUWX6FlpC4V0qZZlr66xeqEIu
	 NGW7r88I4Fw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A3D3CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832305391.4314.3353623119906749998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c63f88d88718e841d312b2cf774121282b9b95c8411ea710bbb367fad8b266
Date: Sat, 09 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778323053
