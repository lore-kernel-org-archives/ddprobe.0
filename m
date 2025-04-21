Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A24A139D
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745279394; cv=none; b=T6wkYnxor5uqv2yTUsWUiP02cCGb6sUASF3jS+qbTCJV1a04WyUuJ2vWt88sWRYHeCDObHP8sJ+ACWiG21UuKalZUPRHGY4xoA+7xukbqCy7UC+/C0Y1fG2h/xRV85XRATSE4PfwQmcu6m8LIhnAP/CvvGhBuDQyA4+DHc/Xvh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745279394; c=relaxed/simple;
	bh=L4ibfXI1If8GigtRDhzzNlv1yq9mOgMJPkQY001B0Bs=;
	h=To:Subject:From:Message-Id:Date; b=jea1Eaes9Q51xZAFywIYceYCcTER18b11lk1aSkjfdHJpXaGDb14xjR5gjtstGYluwqsJsicQIEjxW8s7PJe5Kh9lV0EkcO+MF0nmjmPv2r1Yc+JlzUOszeGnwusrn2BM7mlQKp/pnc0FFmdtilRvV36Lq1DZtSCeXHI1/m33Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQTXoyGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQTXoyGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B198DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745279393;
	bh=L4ibfXI1If8GigtRDhzzNlv1yq9mOgMJPkQY001B0Bs=;
	h=To:Subject:From:Date:From;
	b=aQTXoyGQ3JIGDl7kHWpmfFi0L/taD5CqiN1Nm+RBT2JMwqu69dlfD+QxBpOeBRcx3
	 jOfKE/Ch7GKGHOHGVCtkseQWPivalzdMOqFBxsQzR33Niw1HFi+qasrqZZn/FMxUP3
	 0vjeSfJYplc8Dnh7RvywHohjT/owGopmZHa+q0HqbhWllxTQRY4l0c9reUZ/v0gWTS
	 PKxCWagdUduHFmNfjgOXLTQkTkRTHhZU9Yj/U7Yz9WTM64IcPg8TKwcSC2C9Rm1+6B
	 GYh7LppBx1gUMmjStxVsxodLE/zhlcJkAz1lXckGaK0RcgQOOtNi6O2Lm7P5XaWO22
	 ohkwIsmLmXD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95770C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527939360.30363.3386844285898602306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc182b869912468e8ff0b3f9e62b3061a93d00ed132768389eacfae977845587
Date: Mon, 21 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745279393
