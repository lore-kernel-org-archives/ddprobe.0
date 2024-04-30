Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3F2FC02
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714472543; cv=none; b=Ttv2r0omU2S6FCA24nacnx3T/I3YlSafd2c5DT4QNVfAOZsiaMQ2JV/4MTlzXk6K+2fGDSZ0oJvZgFl0XN86zT4h7DL/PBfFkrA+zy9Jl0L3TU6zzj1e2nfBy/UhI+qihW2HIvQlezxO/+q0GPFkmmMjIDdIqv9coHxKA13uqzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714472543; c=relaxed/simple;
	bh=ukfaZM3ksEeGOhfzDc/nLt5ttTn2yrzk/TiHM5VgOsU=;
	h=To:Subject:From:Message-Id:Date; b=Xfml0PBc5hIiw50JNhdEpK8s182W6342+ghwCnVy2ZkdP/3/gOBb5DM1hgPWOVEvaN4IpSJ9B8MPAqKrW3r2XCFUIUT5/P5IlFcT5ltAykaPwEfEVRW0zFgjedphnG+aZuF/kqFTV/wiE4xE5f/hKcc9MlWEqDFDQLhR/lP9oIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COuYWa/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COuYWa/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A8C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714472542;
	bh=ukfaZM3ksEeGOhfzDc/nLt5ttTn2yrzk/TiHM5VgOsU=;
	h=To:Subject:From:Date:From;
	b=COuYWa/Ewi+gXju3HfPaZ4OrBLGlIiNm8yFxF/nt7RzSf5GHL/0KqAaDEcUlHHytD
	 W3h7KYc7VWXs+f00i+o/b+qnhojMKSjCs6TO8byaduXRMY8MASfshX2wO5sVpsP0FC
	 KTKiJRVyurTKcY9J9+b2XX7vZ8J1DCML6/JTAZaCDkNbWPohlYcrr7YfjlEODTcI6B
	 5vaLJSngnqp3g0BUZgsQG4hK7y07mOMsURAvzwh+94VqVv1HLKtkpG5plLf13ev9d8
	 3AhvFOQRC7GBVo6CVPX6zUjxwByz3a5+g3e9Q6wMYLRHiw56++Th3D9pKHpH9S2ed+
	 4L56BjFjs/QdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC84EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447254276.32379.10519508155058531206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc93c22114b51546bca2ccde058406552938f660d79b4bebcce8bf9497db1b33
Date: Tue, 30 Apr 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714472542
