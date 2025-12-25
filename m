Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B59D17BEBF
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766640234; cv=none; b=PMnCCHCpb3AruzXojvRYLMXsHSg+EEoSdGCjch5GmjewEul1U0XZ4fcedAan5wXc7UOTGh5Bp7iQRTOMnNvZUYiKciSEdJEEGPWN2C6fZYJej6PBbsaObktHYAn1bs0wgQBSZ/qIRXopoFOFzDm45wu4ezWpJNZxmaFnMySxVyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766640234; c=relaxed/simple;
	bh=XlKL0FLjzRcrDc+YQLM/HTUfpVVvmy02Gb7fLwJWQq8=;
	h=To:Subject:From:Message-Id:Date; b=g/Uabmye7Ji6OEJ82aJVruumglTKaFCZ2Cr/PyisY49myxfhyS40l61VLZfwYsCZgxCwgaiCuUM6P0/OzMRnPVGvQJmc4Lz05X1bciY0+sLs47CqifrNo5xjsJuyHdH/4kXQeUXq9x4jsRySW8V3EIXh1wiX7L1Kh5+dQWvvjyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv3WmuQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv3WmuQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55BDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766640233;
	bh=XlKL0FLjzRcrDc+YQLM/HTUfpVVvmy02Gb7fLwJWQq8=;
	h=To:Subject:From:Date:From;
	b=Fv3WmuQguAIYi8c6WRw1MRMZNbeM2ptfxNNHqwSaZ5gHFlohpOuMk9CmRkTRR7JPJ
	 emdzImV8xyH4zb8ztqE3wBtngkscNBKDUY4J/UpR40+P1jB/0IMvu6TfRWjKzT7FOR
	 J99DUlGZ1yGnST56GcMuf8LHSNyXr8NEu4e/LiToC0Sdz4V5c2owE9Q/ZFqexqzbkl
	 3rWFgWKD7tfnWMyVfO4gM5Jl8cgpx4uPtsDPO2mi1sp/uvOVZsrX38aL7NdtOw+76y
	 XvVpHkPTxvDoLgHomIYQC/GrunRzy03uuWyigkUG2CvF4O68Kd2t7cupbU9Q3amNWJ
	 hGYXR/SFYx9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94639E7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664023357.4955.15107485179569176275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3670142141b248eff422176b563a7a20a33523c75adfeafaf4bed492ba8e1e4e
Date: Thu, 25 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766640233
