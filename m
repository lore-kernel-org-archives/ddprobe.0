Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476071B87E8
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745104794; cv=none; b=Rer84JWfAULHEwQzZvdIiymO8qFNkEN5I+xLQfkyQgMRwobqy0iBeTwQUGkm6IjfWniEV/TOQRap6paKZkjZibXTs+YG9TSRn0KV8CIKiBmFHfZldCxlIZYTqtTgce5mdJofwIC1EYB5q2/rFhzrX1kxeqoS8WeiJZ35dKridwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745104794; c=relaxed/simple;
	bh=7hhAG1PpxZA+mSw8HbtBixb4TloaCpFDLxlyTF88Y18=;
	h=To:Subject:From:Message-Id:Date; b=lvW4g5/YkBA1aDkP+K/y/HNUeOlGHNOQA5+O1iFRuY8OPwJwLxkoNRoLgwMcpHUUOZqzva8VxQs/p7ZW5Z5CnWm2QVx0GO85kVa1kN6xf28/PWkbESRYsU4GivjAQWkDC3ytfWH6/X+yKJg/Ia3xY0YOgA5aNkZzG0EbIk6wuIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLnxP15Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLnxP15Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F24C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745104793;
	bh=7hhAG1PpxZA+mSw8HbtBixb4TloaCpFDLxlyTF88Y18=;
	h=To:Subject:From:Date:From;
	b=QLnxP15Y6xeTRwxzSCiez5t9/shC713M8BSIIJA080ToAD5aBtK0YDLH0nR6PNtUm
	 YqhSiHJVYEV2WdA0T+oVXoY9cjc+mMTtWguIXkE+8upEnA5PvKDn893IFfDnXL09LS
	 kG/RVthWcks1BPVdgjlLQL7SBt4vpUrYv4rGbUWba3C+uu1p9hojBGIMlGG5tbvgqQ
	 cmnLgY4Mwumv1pXBIR66nFKT6QkLDAKgiKDzAvGvHK2djtT+wHQj+7t4wjUgSRKqLm
	 gV6OzzHPy3mI7BPOp0Hxzye37EEddEY/PFSIz23ny4KHd3qaX8Bj/XRw+lcLpRdlav
	 +mUdre49x06HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256EC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510479358.681.8492180425646216863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b60e2fd1d1ed24cb31bccce40028181641210a083124243bf926eb1f769522
Date: Sat, 19 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745104793
