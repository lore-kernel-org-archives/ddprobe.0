Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA427817D
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748448594; cv=none; b=p+tGRg6G1Oq37490Puk/18fkW+zaLbLKNp2EFdFB9JBkV2mjG30LV+O0N9pi+b0kCOqSQjHvTy6QEyH7FdeGqvf1zwObIFBKF6oAIAxEDstxjMh8fe7xYUY5licuejFZyDxY2WhKrH9m56IDB+PTDcGq7aMCiV86dTYAGqj7l8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748448594; c=relaxed/simple;
	bh=KpkPD5pjuCUj1VYHoqixsKBviRph0e+zZ4KN6iiZxEY=;
	h=To:Subject:From:Message-Id:Date; b=MNY7LVlCb9bMn1ooQfCLDdJ8VlOsZKpDhljElTArCWSUmz/eRv1vFb5X16lBUr37rxPoouo6D8NFHSjIrkZAc47LP9DzGBn4ifxvFmHcg3Qo7GkzjYCGSNyWa/DTyV7Rd5TheOPWoA4gYJ+QjuE+BegqPMDJa6CYvFIHbGGdhkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrHatyMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrHatyMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B9C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748448593;
	bh=KpkPD5pjuCUj1VYHoqixsKBviRph0e+zZ4KN6iiZxEY=;
	h=To:Subject:From:Date:From;
	b=MrHatyMP2uWaKzJ9FIhmMJPEuDQPM5wzKPL2IT+BMsvXIrSnF1B2vAAo6SOhdRZU6
	 h2VsuKl6/8l3KA0ns1ZHCq9p/sCf8lqN5kUn6nNzTv3GvcOr+Wa8V1yB3L13ZHB49G
	 UGGEHVxnvBWDSIsoX+p2UUyoqSE7rM/qwleLVowVPD9yY3mvq8n4c7p4DDR5ugYDmA
	 EGyLr/NH0DN4HB79hE4CbeZweMWjoTelM/eVefhsXQ9jnR8qUGJE87qzQuEib4sCbP
	 kzD8svHezIdOJ6iS0IZPBIVdnX7xpI1i50+V3GRHhITQncZEoG88etDHCb75xFNxmx
	 djvyGQAXTGwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844859357.26845.7028752649997952966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44670d3fdd53a2c80eea4ab0df49a956eabe0e519ca0944b1704fcf3362d9216
Date: Wed, 28 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748448593
