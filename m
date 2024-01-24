Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133F577638
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706114897; cv=none; b=nTP9XiKKQVfy8NS8cM+ohgHgame/BexTsPjh/JKmxy5JJYdAfZbJBcZwLKNtLJBGUvBod3SuTh1gqo3U/yWH4fA5k+YZEik2TOTRIlMTNNfZienBKRDuB49qfEBoflAJv/LjCGGWLw1EotmGijYOh9+HsVpH6mQP3zvYiqOWs2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706114897; c=relaxed/simple;
	bh=BPWSdvVQGeEz8YdRs5OGj4pWwHb2FLsCZksTWhOZIZo=;
	h=To:Subject:From:Message-Id:Date; b=LrKf+OgPXxOjNWHQYhKOeWkN9gXiPw+pZviOsJBJ/58+x80sI52sBE0VWWfLDbY3YaB4k0pR5wnEuSHmLTzu67bWbN3YuEzM8LUuwT/lTdBFzJwXr9kTLAT7kOt+498chUbzW5nhIxMME2njVPeyPU/J2vfhzF3skDYs5vbyRfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyr9eQxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyr9eQxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BACBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706114896;
	bh=BPWSdvVQGeEz8YdRs5OGj4pWwHb2FLsCZksTWhOZIZo=;
	h=To:Subject:From:Date:From;
	b=oyr9eQxAlzK3U/2u7Cy7w/Zool0XmgkEK6ZzVb06Mi3aNI9u0qkt0I88xhAeJvqr0
	 PIKvikL2xs7tVKQW3eaE1/EZc+wFrkJSVrgEzxwGzXqQlJXBoPDwGP9DzLJzNej9Ri
	 mPStip7iWR7q59tWb4mScU+wqn1JRroHmVlGh9+sZX8YnY1CRg+2UPNwhtJjlPEgGI
	 DdyFJALvfv7EPWghMmM43T4Dgvy3L7Vfofs73eCIafueFQzDA8q2p0vYck2UKHpkx1
	 /qeEf3++GoJUBID1ydTn2PwOB35Z3NQ1EDQOfKnh1py6c8KKGWoQpWxhngdz7LUYfY
	 vbb+gRdi8WEzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61600C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170611489639.15628.4982844595559667671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c5e153eaf4747c7699633368c729de83b2d025b308c970b303892f45078bbb
Date: Wed, 24 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706114896
