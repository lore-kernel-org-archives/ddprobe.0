Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243DF3FFD
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749895794; cv=none; b=b/+Wtb52hJrCkhMQv55Gx20+7KEvsR8VvqqaGrLJqYqkCkoKEhgxEbkXuXcAdZmbKS1uOTMWc4p6/UpGyflrpX/ferAu2O8LemCHo+ZI1lzVRXQSzJ7UTyioPwqcbtzJzM4nyHMmp4JWebyRNAg6m2zp7qQdOxfrz9CoM6YF/bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749895794; c=relaxed/simple;
	bh=JZkNbCcs41z8afbp/Y0KDmDtNOnbY4BEE5BeqFTQ4C8=;
	h=To:Subject:From:Message-Id:Date; b=c9dEiXeD4i0szxuk9cpy347w67dpRzaXrOLtoiDkLcY0RfDMWtYHiGGG6hL8oDqwWhZwQXAg11gypOI8izY6tYY6KtKdshbWbC01m2r9Qp5k6ovdKTar9Ffbav1Bixg1gtSdneCfF88yP/d2aFTeQ+zyYw/5nAPtamfbVUyB9cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dltOPPD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dltOPPD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC70C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749895793;
	bh=JZkNbCcs41z8afbp/Y0KDmDtNOnbY4BEE5BeqFTQ4C8=;
	h=To:Subject:From:Date:From;
	b=dltOPPD+OXnIQyIPtZZSJI8EiHqYpvkTcSHKlKprMjVaKgv4vNUt8QEiOyD/KlXvl
	 hrOigXWBA1WNY0eFpRApen3Glb2HpKibbc8BVa5tcu2Wx8Z88JJIHJ5pjfTVhLupWf
	 B2AJXpL3s+xBo9hrwQNznDA+wPV8Cm+WFgGxhH4M3csdDeYTS+plMb1J/JJH3jx/VO
	 Fl3X6NCUI6kH9tzAfjOn95COpXYyzcFTq6zT+nacAhlNNsfx4UIAZPUD3n6a1XE74h
	 4CrivIwbShGJ5N+KE8ShPKVFA8flKLK3SCE9YeDwwLOeYFnQp72OmIDbFB/NLfg+V6
	 Ibs4xH5Kf7lIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFBFC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989579361.19233.388819007226633877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4deba00eb78770a63d7835865be63ff39776a8b2c39077b447bcb29ddd323f3
Date: Sat, 14 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749895793
