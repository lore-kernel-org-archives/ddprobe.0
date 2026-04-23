Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0591D37B02D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776988654; cv=none; b=ix8TSDZ1WGozK1OitIXq4svHsET6m/KdwPAVtFfrj5crPqGvDm+UIBAr3X/huv5a+ShbRHouFR2QYzm0RVLJZKyV9x86jcrhxlGNNEi/zpp6NddWHsIsLyD90GLJ+3TAiNaEr3h11XrmWLiTtAwVYZ6B8eEk4KMAlVyKvRV9n3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776988654; c=relaxed/simple;
	bh=u7ChIkfiwWIgCTOtdXBZ7MB6iJQb0kH1DQPr6dy+ed0=;
	h=To:Subject:From:Message-Id:Date; b=Cj4B2vC8v7l+G15Xlsq7krqtpYW/OyRNob9OQ6jcSPyxtzhcEHbyMKGQURvmOHr0CeQc9XWQIXF0Ly3IohUxcZ/jCUpCqMW/knTq/ZorK63cItlh3KfSE5OvOfe/nsZLxBnaeV1AgbQ1AUEgIQcLG3s3MQ70anZNw+MXhfS+uJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmKNVRXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmKNVRXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1902C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776988653;
	bh=u7ChIkfiwWIgCTOtdXBZ7MB6iJQb0kH1DQPr6dy+ed0=;
	h=To:Subject:From:Date:From;
	b=UmKNVRXtu1NxUcyFUJLu2Pw5td/NUqpqb7hMyJFmH/N799YLMaw+4EEbpbyc1cOym
	 OW3co3VXvMPvZIXmWpwr50SExtKZY+jfVrEitrpd99TvnGm/L89b0oO2UvZJsMst3n
	 MmG4z63DB4qxJLvq73oCMrUG/rc7mAhl6xQYy7UJ5gfBNb/JnpxXqcrdWNCj+a0JoQ
	 4yMPnOfJr8T6efpCgoTS5GhgZVXDyhpMH7iVxhEBGassWB1GdAKDZvMsv0eNEVs8lG
	 sdukTWuR3tAT2mWWzSKgXtbhLmABPVbqdyb0yyAdvSYMvlJD6EHE1DVSTdysTUgv/g
	 fr67LNUeoxSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA848FDEE53
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698865368.5890.17031831065272024065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644236222eeb3f641338879d8dad51dedf211b0660e992a40c206e3af606a5b7
Date: Thu, 23 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776988653
