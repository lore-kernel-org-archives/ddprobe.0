Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5AA239E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779520954; cv=none; b=BzfdU15zXlZtOKtMOVus7At7w1xGHDorcwc2IJSFJHK0vcAeNN2FQbTsg/sol/92pUWnMmJPf5L9CvH8V1Z7qijcG68iU7bCX/+4RI6ZECDbE+YqUNLPjJdRqmK8ckEHH60zDxY7y/+uTLFXjKE1YVFMrD706YWsK867oYnCe68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779520954; c=relaxed/simple;
	bh=Q/r3mSHTsMoMd/1VOWo67eSUxGz+sO75RGRkMxs16Eg=;
	h=To:Subject:From:Message-Id:Date; b=jYnhGigZcafJ3Yueh1Ommp1dJREos3uYFCkOCbB3AeT21VNvMrFGPf8w8M0b1TYaPVUPNFO+Bz261EhCtyJ9svHpGJnDhDJDpy/U6g7+mZ4sJb9HXu29Mupbdrn+jqGMeWFND4FxLSgIqB+0g/m7FxwKS0icCUPgAFOhK0HnUsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8u+CYCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8u+CYCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6675C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779520953;
	bh=Q/r3mSHTsMoMd/1VOWo67eSUxGz+sO75RGRkMxs16Eg=;
	h=To:Subject:From:Date:From;
	b=I8u+CYCBbqeNk/0Ohpsec24FnLVnob89sWm5eh+8IJSl3VzWuAKROAmyCIVmW6c5R
	 YGGIGLF7QnCYkBkH21ZtVNMIpLVcby7n2K0kPkrYuLAJevK3Pei/EIiboNMaOMz51u
	 xz28hrvYL/8nEMy8uXjEbaivUw419WBpigt15pQ3g8O+yGxzWPIml1qfycsJx7FPpN
	 URwrzhSG7W4GWfOnihctFOv1+RXd89vfzolN2VF14TuPI3zYlOAVAAIjavuLoWkqe7
	 +7b3yaIAb60xrnfNXTrtL0092IfoBRQtBmv1oGRBeg/In2P0TpQ9cUsUh02N2sB3B5
	 x0nJYnHTZN4Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1ACD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952095368.22106.15381085611086478028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e660375672e7c526a50c80db22bb5c5ac095ac29b0962b5285a0412f4880079
Date: Sat, 23 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779520953
