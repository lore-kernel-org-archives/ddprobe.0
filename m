Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2D740DFD6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775360734; cv=none; b=pBz72eFBsbvBy7+Dt8Sl6Q+ZxlyZn30orkA1EgwOBLQ9wV7zeCJDoBXvR1EkduriiT79mSF/vNQb0aNUCTTx/tU3CynuxeJn1nc4vNGm9ZAORfKzKcem96SJUw/SUV4bfqNRltxm5fxjAUBztsQLjOWMdXA0OOltGwSnm+QuMV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775360734; c=relaxed/simple;
	bh=4t2dTqclTKtiQhuguzhD7pFyAm0G5vpDAvBz2bNqeUE=;
	h=To:Subject:From:Message-Id:Date; b=la6XdxEa1N9tMzowWPRlyV1mfI4WXJQOmEvey0hn1/fy0MqnhXTI3mLYG4YnR0Rl1oKGXGzWnFTnFMUlTQp3y1i8QRsDeMs/osdR5fY8CJ2eMKk0sQN3oKCgOWyii4UCoX4lPkR8a/NM7d6fUE8xN+ko1SgOzaanW0pmW9LdeAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIMk0m/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIMk0m/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF27EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775360733;
	bh=4t2dTqclTKtiQhuguzhD7pFyAm0G5vpDAvBz2bNqeUE=;
	h=To:Subject:From:Date:From;
	b=uIMk0m/GnCwR9jDShEL6ziXeyQ9N87kwNeyjkuwyMo5Zng2MUKaVTGVzSNlEhI5VX
	 sE1QBzMzLDfmQg8i/2paqdNwSrCD5Yf06P1M3Z/OeAqocrt0QPi/AtnVLQSa2JobVr
	 rE8n3BtltHJJ5CTa0oXi+t/LbdEp3oQgOK06TWu+wiUdevQ7L7dEA3suAuQqaD/M1O
	 RlSz2iibcANucgEj3EhoQK2oa2bVRFJjE5FwGGcg+ObgyTL+1H0Sq4WwfJOHH+9E7m
	 gNf8Yk/5GGk11rrZp03vhDKYd3kUNIOq+0FEuM7855jcUkAnVl5okVtgcKJxYxZ9hw
	 u3ITt6AI+xNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE4E64010
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536073369.21522.12506472396605289303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccd0f92ba38f1c4702656be50dd935e26f129d0f55cdf6c071482d69e57da35
Date: Sun, 05 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775360733
