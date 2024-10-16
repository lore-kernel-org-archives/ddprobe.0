Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20FF205E23
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729098353; cv=none; b=mIvOr5EXI4wn+MbaljiIyERtUj1Fe7AdX2dMRdJwhvHaFqNuCj6J4Kgcu/+v0qeE9QHFTsRDO8Dhm0njZjb1ordNSgY3lZA/JjHOry1lsOhPtfwHpH2arcQXIaEH1wOI1R0NzKHxslmUmo5IXZ63DxLevBVveKfR1XSBsUD22+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729098353; c=relaxed/simple;
	bh=RdBFyYxKIJrLN+Rkxj32Do8Cnm93/VUIRW8Dn+/9qpo=;
	h=To:Subject:From:Message-Id:Date; b=AfxeLzClfRsT01nIW5Xu46KGyYvmxtqbiS84klmTLHZpgbt18rdoLy7XFfl77hQjYOaTpb3dnd9lUM43Fvr21N7V6+5mlG3BYtlXHwPIbNrC3p80Mmy/1gQJyruEqqDer8vtmArrF3xcE4Yj5W/OHTxgEhW2LmtlCKyd1Y0G3jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGjhG3Hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGjhG3Hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9616C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729098353;
	bh=RdBFyYxKIJrLN+Rkxj32Do8Cnm93/VUIRW8Dn+/9qpo=;
	h=To:Subject:From:Date:From;
	b=eGjhG3Hdk7OkqfyuFZR9/Bke5+4fEUQhoIKk9q9n1lyBE4efsfnUN25h7MPP2Ic1t
	 hca9YOWnQotgIq+PW9huFhJeR2ElYkqLc12IZvVfczFou4qCbMp6uWY161nwv1NN3+
	 FldHK60ru2mt7YnyuPGskNyg73dFtaDkLDL83cq3/zEWLhGSXfI1TMv6SM7EcX02j9
	 uW5VR3jo4C7Yowz9dGLAFSEVFQylVnTMHYq/6ql9oHbB/scfwa/5wnzyxR8JRBaoEq
	 0n6aayOn1zk8Hc5jLp37ZThUa9sDuL8VeyweBU4l7gbDmckoBBdh4JTYPguYJc4knc
	 w/9Tc1Kds2Ufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B392D2A52F
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909835360.24224.9941920686523967926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993161fb720c2227a661cd073a49d4878b00a34def3175d4a8915c43e58040fc
Date: Wed, 16 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729098353
