Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327D5286A9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748688595; cv=none; b=XjqsF/yx1+461r0Xn/dvwh+/oa4dDdd9SRrnAXWoMVoaKPrPGnmV4anX+sNQkVbvU6oBP66cPSEW4w5nC2j4OfztPMpQyrr1VugcTzO28MT2YxeKAV94jqXfnGECMM5308+SRJMDrAVBjxJxNgxKhyhskRzITyWCcXXh06Vn+Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748688595; c=relaxed/simple;
	bh=U8l4z/M5kPr5BiPf00zdUD2irC+zcaO+quWIByrqCkQ=;
	h=To:Subject:From:Message-Id:Date; b=BuM8FT2k60L+CWwDZs4tzYZwKQjSaVSD9G8sW5H18uGmAZYW29qo7ui7Uj0nkWaZQm4gP6yDj3pBULpzwFEMl5/89KDN3l5mYqdUHfCxNYbe3YtwJ7Wd6OSHtKEhp9PMY6UgNsRTMnr3CwVjqJJ90zYN4HVEyanhSUQwAffH+hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRuE+6Tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRuE+6Tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748688593;
	bh=U8l4z/M5kPr5BiPf00zdUD2irC+zcaO+quWIByrqCkQ=;
	h=To:Subject:From:Date:From;
	b=YRuE+6Trl0642caluAVXCO2isnMakR2RLKnCErEfowdwk07BgXemVj0sZGjQ8O4nj
	 UdAHYOmSfivCjGFT39ZJs0vgYD7Y9PlQ9++/QMLCVRT3rjxMb4tSQRwXJmF66UHtoQ
	 pZMaFlD81KvxpwTCyei4rmLZqfnuDl8N3ykDOOmMcHj0NZZ6D4E0OYQsguohh63SIG
	 yX3VrILsjFAYW5BLQT2fwiIEQ53QtiAhQTVMuNlySHMpU+KM3tq4Cgjhecw8UGjcmq
	 v4FBsqfmp1hopHbAA5SvwyeQKiWx4AxraV1J6ttBdpByaAwtAU1iVUUsDwpfpg7E/Q
	 31dAdZRsC+oIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA7C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868859357.8609.5574847678762772722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd201c200f32a82fb60b496d1569b9592c939932720c0d58cb0934191c38d799
Date: Sat, 31 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748688593
