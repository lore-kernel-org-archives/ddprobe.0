Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDF813D53B
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744427394; cv=none; b=q8mroTxiFW+s2Hf+xtqAfRuJlxEOMjY9zvskw0U54BZjBa645UZR99irZd88gkilOShIKdIcbXhck8o/+N7IEpHOW6Pt3ZNXoF6hPLmLGejiTcCEYzyXSe2RoQ5d6MQ3nzAO/AueuxHzzLTUg0bTrgw7KOu1FQ2QSfL4U7Jpr+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744427394; c=relaxed/simple;
	bh=h1IyVLiIWEQghlQAH6Wb2AOCUZiTPi4uBbMOL49Eljw=;
	h=To:Subject:From:Message-Id:Date; b=ND+slCByPMGI5Q77ouigdkW6ty+dxJB/rIUVzpdZU64Ks9mxPf8Fi2UP6fYWwZUnMsbta8lKm5Oc03f/yVezRbGXzrB4ZMj6nd2mPYMKEU+4k7mUre/umcxlhtCqX/KmsC8Y6fGLbPhiN5Bxl1M1N2q/86Fdf4KKpBJH5JLWrFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7Y5wPoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7Y5wPoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21D3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744427393;
	bh=h1IyVLiIWEQghlQAH6Wb2AOCUZiTPi4uBbMOL49Eljw=;
	h=To:Subject:From:Date:From;
	b=D7Y5wPoh/nUS25Sn49QOB06bmGxUicyGwKYOEWbz6QiUjyXcctSg8fLdTHfo0ZK0i
	 RNFAG+lhCABiL+DpngHRWcRCq+43x+qGs9OTpABBdLImvR2EbpF3qm5VLE/sPn+XnG
	 2z/2Dhpx2PiEIHG1dlFQ88dWaFBUD9pUNE02jBASC+K4ImVhQprOPydvspgydZdsXe
	 d0grr+fV0QVGtRnPiNn+9oZcZ0j/WNBdN+uz1QkqnBSFiBn93Uf3HGBhbtWx0Rm53u
	 OjwiWfOdRU5maSV6tLS/GOXWSftsHk6164zpMbAE0YsHmkeo8Ghhnh+hWbuv8BxEb7
	 exIcFEeOsvYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96629C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442739358.5703.15325010459686001321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb7f19c157d9811824a0846f7f57e192acfcb203b9402e24fed7f3a9b1299fd
Date: Sat, 12 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744427393
