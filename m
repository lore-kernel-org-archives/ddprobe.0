Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308D41119A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734284754; cv=none; b=UZznBe4r4gCILu+sYfo/TCO49X3atKIWAtRIXsbl75dcmWH9Ml9J3JH4boFHn0ppTB95/ttTU31CsHq8qsx3IaudzGk8/xX6nKQ0hUq63c8m5qy6xOGrr9YJOqEDbg88bOhZg7KSlAdUqE8s26MGEu92cN49E2aIe/uQGIDoUyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734284754; c=relaxed/simple;
	bh=P+npUD+9BlcBfM6Vd7UJCJ2pTx+wiWGYs8u8Fds8exM=;
	h=To:Subject:From:Message-Id:Date; b=taTRp5os599iWz3gDQZ/+hWYbH0PJt92slUMphoiswieSqtsdp9inpQV2sEfppv1Nb6JxT8+CGrs5s0lR6Qj5qXJixJZQ/cWP+0JEXufYu1syTX+ooljmgsOo4VTctntoPfvCGFcuvPMWPVdFIlZT3qTCdnxEoy3LqcSiCVfQ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6ieTVTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6ieTVTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F82C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734284753;
	bh=P+npUD+9BlcBfM6Vd7UJCJ2pTx+wiWGYs8u8Fds8exM=;
	h=To:Subject:From:Date:From;
	b=M6ieTVTyGVuNLQ/P3t6hcxKx/GVyWj32F28lvnHdKMaJnUWpJKdfzjNiGcv+7pmzz
	 Pax1txLGg9VFu6X8XLLKXd8+NRSifnJX+/RL78+fT/VV8PdVsYhREGXoCFH+WO3SL0
	 fHn1KU4RMCcUFjfEO3KVmwd0zosEn/r1kf1z1ak4l2suPobqKaH+VYGiiJDfh3Fldg
	 Aw2pBGfaDsrK1EJRXYbGnE/cYov2obthNjxtdH1v68ykDaVgngBBgCzdqB/y3BBh8Q
	 T9pPH1CcWeFlEehy6L2kHngOCn8z4siHXAkDjPFNu2FN7jd2IQwfuAIZkFLUbKWvV1
	 67L8lGclIEmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D441E7717F
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173428475363.7720.7804185711854513411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b590b89220c0b1ca1a0696944eeb82255eaf1baa61c04183767bdacdd060712
Date: Sun, 15 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734284753
