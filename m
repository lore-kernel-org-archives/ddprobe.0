Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A6D184E
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726362954; cv=none; b=P3bp7a4T5Cefmwb9c2sBIkhkkcO1pQGRPIiZwHwXWsUsgQ9xxmyvYjHytc8CfXYS+EbnWoUeGBSE34R/NS64C5hnGy6vOZz+TflOyLztz/2NySSaxj4mdW0c51oRMOXt+9ItV4NkElRXggo8cvgqCwl2Slb+F+ZgnR/nl1XLj0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726362954; c=relaxed/simple;
	bh=jHaHEwgrhwBuUN+gpKQq2c5os4VHqQoNVLy8zGa25RE=;
	h=To:Subject:From:Message-Id:Date; b=t0+dTq5hi8Esb+h5B/aS3DVejfvKbpuUrxbBD6lTUBHH/+oNNWCkhuEGw/TZyZHlwpv2XC1p1mP8f/Q5n0/HfflDaDK0ysjGFsQEA8uQrn9SZFTGQJlOw97kCmRERJHNWDIn2KuJpIOcBvLsuyikC/9OM8mdlS6V9JJ/UjWIIrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNYcTwKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNYcTwKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4936C4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726362953;
	bh=jHaHEwgrhwBuUN+gpKQq2c5os4VHqQoNVLy8zGa25RE=;
	h=To:Subject:From:Date:From;
	b=eNYcTwKjaHkhXt1BDnAgRnTFdlMuvTY+7DI3iHbmP8jEs/AlxERmLhdeO9ZF0miiZ
	 QiAC5+GO8+wvTPqwtnNhRyvEEAWpxGBcjJINStJAQlnqyr6kyvTgUkqtLVjzmrxMvK
	 irHLLSbEBlXA2wMvtUA1c5iwijsAt+9mv5VN9Y2zAeIn5qrZypQijN4KVhNp1qzGI3
	 mECFQ59rMKQ463iLEVm2AZyn6BToSueMeEhrDXdn5mmW39Qmq1f8iGj+Gd6W0LSyEH
	 uvMe2t/lLnBQz+FRWn6xSuxBir/YplLGn6AuJjsrxXyeF0plUW+/i+HkhWAUY35QJJ
	 KfaoXAj3odQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0986C35FE0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172636295362.5878.8879607293327799681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b6ff820f502e63413c5ab3aa2dad8c49910f33679f0d9c40ae66097a220679
Date: Sun, 15 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726362953
