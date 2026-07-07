Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7237F72C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783442914; cv=none; b=Jm0ATJya+FQgJPrrgsZSbPjgxqpetcgVrQ1A8Z02fYkRQYwnioELg0brRH+Gfa5ccQq+o0WkVOw6A59hVD0KQOwXsz5mBJFQSsNy9rE+KWnj6B65KchgmlbsSzu7kHhwgVzkUdq2jBXSQqnRlQgQKHwXzA3j9y5LV5XLjFjKphk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783442914; c=relaxed/simple;
	bh=/euratVqk/Fh70syLgY/m0b/mA//bWZmmcFzKWD/W8E=;
	h=To:Subject:From:Message-Id:Date; b=BtsvyHmO5OKY70KjuDe+I01XpO105d4hrasUBUwg4ItecIOlUhV4MOpktXy2AvgISmON8YVCwKacITUrh4x1XyRNC8a3uuK0Gtn6B+d9bcRW8mQG55Pl6+fNauA73Kp6EYws3ix0stW2QgyW5QyMjXdmvDr7HHv/nmfiWdN2AX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4C1R3cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4C1R3cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9CFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783442913;
	bh=/euratVqk/Fh70syLgY/m0b/mA//bWZmmcFzKWD/W8E=;
	h=To:Subject:From:Date:From;
	b=p4C1R3cSrtEO9ekCOlrarx2mg/t3pJnJdSSXoVcpnO2NKsthIP5JI2Hv5tGeBJLJe
	 UPFxd3D0CkzCAqCLLZr9alHK6XtTQqkmf3IcOajje26cbRVVJXHxa+YhWyeeBSV19r
	 fM9d8s8Eitty1/88WwnILNZgc0mGoEnqcf3oQSaJwJx20AfRKBNI8XOfzJbB9amnHQ
	 D9rtqKKcNp64jwkl9nTRC1A0XKepImWB6LZW97tEief1sjKUicIdpLwHIqsJ4dsndT
	 VLb4WKExuQqgHpqzhDJC6CPKbkEx3KoU1i8g04kSuHrhBnj3IqOgYDixTzsW0XjGLf
	 PnbY2uW7OyE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9253C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344291368.2453.7449143805531565856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d7d56824ddb25af9d963345c4e0a60f029e5a1ae08fb4491aa9ea54d3ac8a6
Date: Tue, 07 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783442913
