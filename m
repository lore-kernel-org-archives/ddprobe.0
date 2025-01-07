Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A27D18A6B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736219754; cv=none; b=fYDhsYueRXWXW9MA1JQhVk2PRqQmE8IlAJU+s5dk5fKXoOwSBfrXgLyIwRVv57G2SweoOul0mNBWOsrP3tVoqFfucFRqoP/h06oOSLMsh58DFY1cf8JhrMFxFtRbFu2dP21u0dmcZqffEIuKuy08zMr6tYrBXaNTS8G1l5U8HyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736219754; c=relaxed/simple;
	bh=7Gmywy++foOvRx+BRmPhkWTzkLsihslVg3q4jkb8M1U=;
	h=To:Subject:From:Message-Id:Date; b=rezszIrQnuFemQR3LRKuPYNJvTWX7kCBF+PUmyswh2elFt0db7bSRqaGXVFPOFu/38aPY2A1sGCDqhXN2IyqJv7IE1kNWxctKXjbhSu8yJn7rUYjOYXPxvjXoO1/ObLxJOtISuQjBwPFwm+Vey84GgkTTM8QHRnv8/W27eun8Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4WZVEZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4WZVEZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB2C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736219753;
	bh=7Gmywy++foOvRx+BRmPhkWTzkLsihslVg3q4jkb8M1U=;
	h=To:Subject:From:Date:From;
	b=Y4WZVEZnEWl56IkGh8Xhi1qv+14GHpE9RXCZO+krzL4KWCidvhDV5ovc3g3l6spHY
	 /xEINrw4eEd09NQTclFupunl0aO7D9fwT9lXgu5FbhMt4T3Nmz4rRFNlzpxvmLPexZ
	 f8KdvUqWHsRg7NDU56m35v+5LCvPWHWr15bDsvrG35+Jzy8Kh+v0de8ojipSZSRNpz
	 8QogoFs5KWAAAaIkeFfNkltOUT9wvnaNJXMK3dus1OhSBZAMFOrZ7s7rxNbuFmuzQL
	 Qqy5ml83h2qCfZLjojv6l9mMsCGwWdVH4tsxqYshep51HAOOeNaDx2gL/eLqE4GLYh
	 HjxuPfok5BRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93529E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621975359.30393.5230403795221555611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21959eb40e7c336885fdde080a26cc6061d6d77a82d707e1bd5e427669a77ca2
Date: Tue, 07 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736219753
