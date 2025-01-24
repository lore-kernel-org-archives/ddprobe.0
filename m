Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447231BD9E7
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737755754; cv=none; b=RbIICIO86iu6bxeVU7Om5/Hg9xyfeWxSW+9cYKoBaBcWQO4D1Y/cR3KixdeVZXcdHgGGpf6Vw5K3N7O62BsATXa+qV+S47F3owx6wWuG4QJGOPEgxR3u3qQXTeFMUK57nkeNLZXkbGT82lhMPdJN05JvbVLjLV2Jt1M+2XgYIpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737755754; c=relaxed/simple;
	bh=Uv1pAprd7XXBkxsKibZQpIBTzIpOKW8jcsGsZ5K0Ang=;
	h=To:Subject:From:Message-Id:Date; b=G3W8I+c7BIWFvsy+IMG92eikfA1XH7eVn8VQ+F3mK9kHI7GHUhyN4Gnp3a2gmyMs7qCalP71/vvJsCRcpIVJQiZ+/Gi9M50XQjdZdj8TAcsxNTWIKVfZUWJJkbafPFMOXQPfJc2E8/TIQpgfAtw6S5oxY9JWsOpzaAf2L4iTtSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U748FOuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U748FOuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4928C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737755753;
	bh=Uv1pAprd7XXBkxsKibZQpIBTzIpOKW8jcsGsZ5K0Ang=;
	h=To:Subject:From:Date:From;
	b=U748FOuEZ0/Kq6XIQxpA687eIWMwvqxIK2YgDp10KWtNsWtSsi7j2M1VJFoBrwTUO
	 eu7RKV8XflqOQMYfWTAx0zvJIpOlGkTl/TuXB/I/Gu5lXHs6WJrl8Q9jKLCkMo+BXT
	 wEthSDGoZQBsPZK9VoywjYI55iWoFltn/pecPxiP1Z5Ut340++Peko1hzaNAgKrhse
	 BXVNsS75kA4Ew3oXxdGaLNDyEgJmdrSDdq2YVlkslDFj2yPK9rOnnKIQmY0ZmwpWRZ
	 z13qKMyeR1BhHAdoBblDQ+1uOGayG4sFwlqyjPflNaNF49iSyHzpvj8Vp1dCllY9Q/
	 +KERa+iRgFBTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7B8C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775575363.16603.8973801006501146155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6585f01c398a04aed2ca8bc4d7325d6c2237aafeaf9eaf4ebe17e29b70c22b66
Date: Fri, 24 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737755753
