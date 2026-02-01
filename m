Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202EE3EBF2A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769928834; cv=none; b=gJlHCvtl+I5DSvbRCJUJyVN3TE5dS8VnXH0ogJ0W1yGnYVqp3ykiL3UTbqesHfPKF9lJc3TGhyFoe4X0EGMCwJlRY6gflFH76kf0LckMP1NQRo3JTLCGskDnYnnte5rSePZ165mOROWqeMVBGWS71JbTVF0bw/8jMbJDXYgQh/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769928834; c=relaxed/simple;
	bh=kumbJqnZxqoplXQsO82rTjU5hzC4GANkuFkyjcQUP0s=;
	h=To:Subject:From:Message-Id:Date; b=BURwJeYcRYzz+h4YbboOiHiGjKNrlxmQ/8BjSOe9YsFsoAJxc/Fr2uFZWGkOT19zgM+UOSU6uI5wC8hv9P2bwE//4wyZtpku4+SU1eElOJUSNUuIr3A3dHo7VLcYTmz1LQNZlvtrdp+md4a0rweLJo8LavSZvrtoTzlB11b++ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk8+U1VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk8+U1VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769928833;
	bh=kumbJqnZxqoplXQsO82rTjU5hzC4GANkuFkyjcQUP0s=;
	h=To:Subject:From:Date:From;
	b=Yk8+U1VWJUrbRku83nqK/d6kZ8YFTK1yrRHcbbYkldnsrd0M5VxXFeJsQfCvaZaqp
	 2RMoTivncm2FLIQ+9W0LN43dqjS28MVEvbcbrS3QNRhBS8LOg4EofNjpRDTPzRDYwy
	 oXPxJaLFXSRMIyD5oZ2D5ghMum5x59oq+B0TGcpO+EYaeQfx3P+FK3ztaXsZZDzGDd
	 ucX3TxmIE1NPCJvYP1g0CJf7fp7YURhzNU5W/1qfk3NkGzF2d8vmAfrJOuMOZxxfZg
	 FvHNiby4V9A6Ymru829zPpESHyJKFa2s8fr3FSxBQ1RcvmfkYwwkLvSJqfRQLcYmOv
	 ng9TZq76avaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97059E7C710
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992883358.3014.1938344209201983269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c53fcca47d05680610ce0c625bdf97b3c88da16361afa53f86d8cf78a928039
Date: Sun, 01 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769928833
