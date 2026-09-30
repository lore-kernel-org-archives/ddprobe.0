Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7E53CE0B4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790806834; cv=none; b=H8nPAJDtcGJT2n29Mbn94LiazF5rJvTPveXoJb7Vmr+pk+2dPs7EmQh2j5sxFWHSPLThpqO5k4PQKLqKzKMJdY18/6ixoP20xwjt5HSbhI4YIRL53dRcJ+IcLljUg8Nq//Lz0+HQKdF3mlgSgpeqUKJbRwjFZPe5I0ZYAM2yehw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790806834; c=relaxed/simple;
	bh=gkLLm//3bRH1uYz4EiIUCZHfJt1GjYFrEYuq0VvfDzo=;
	h=To:Subject:From:Message-Id:Date; b=c0oHeTdeFNhckjYSLzVUgU1VUQZbqcUZgp6dLXVMNdfsm2ADISzpLYciUOaxeQCbBxreUlnBcfSskVih0lID11rRhceqWnuaDIIvi/KlzbP5URK0/iIZBxPYqYQ/NgFXR6103kY2XXaLTql/AjaoXDQaabY/AfYBDcV+0Qsoi7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQSrLPkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQSrLPkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7394C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790806833;
	bh=gkLLm//3bRH1uYz4EiIUCZHfJt1GjYFrEYuq0VvfDzo=;
	h=To:Subject:From:Date:From;
	b=UQSrLPkxBOFIkN9FpNdQruqKJpTleliblSSGNGAM6YShj5OjfYnsmPnq3ahq4hqzA
	 gXW3Xzsfx281CqDPDpKkCC3sc69fqnBdWJlqYmzcb9fFVJgkcTxs9uRTI2SsWqjMED
	 cIdTIY/sBfyOW+oHSA4H9qOQyt5g8fr+/8Utd8bcxnUxFt1ALVKj1Fm0ubx9k46bb+
	 NtXMt3zrpf47pQGWKDmNEYiLCgIXd8RjjkempkVtycO42I55wYsHpsvaxljOmR7F6Y
	 hCmwNRNbJWlS+2qxkKCR+DeKByiEri7PRLmyZh2ods20PBnJvNDRGeinVqnHO7s/1L
	 nNWeKJ8+GvuFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E2CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080683369.18323.16550814488722288257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2910e816659fa030ae45c835673aca4ebf8d3c3cf6978353606746aaccd17e01
Date: Wed, 30 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790806833
