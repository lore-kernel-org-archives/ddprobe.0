Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C9815442C
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741456734; cv=none; b=hYkyOTFEYLPMyR8kdU9c2gFbwBDjzJcqeifId/asGHw+r0q2wftB2cVkC0tZkMp2Y/dKDhhbxaE6ucVrwsHlJlwjhVgOzG8js3BvndtVlKxOlguFDlf0LzumJcq8yl6TzIfmTNXVMfD6bRJazDI179K6mUdrZJiy2PlnpVz0mIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741456734; c=relaxed/simple;
	bh=w6QxOokQ+AbFVLwbFeYGpmnt+BEsFBqE8ajlpEuCoyU=;
	h=To:Subject:From:Message-Id:Date; b=c/Hqz1ew6kglaQt5iJWgYbSCy/lU3UKsuo9mF0mN7g3khEbQQMTY2LTGXj4puS1VhRTDvsDIFv7L++nwzSKtTmHHkPzuv9tfJisxzaKQhRnZQlL5CGPZdKZgp6v043t/LCG966ouQgFrEqddxkjRxMk7gHoDvTzlSm92dfXkFPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2+rL0Pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2+rL0Pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA99EC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741456733;
	bh=w6QxOokQ+AbFVLwbFeYGpmnt+BEsFBqE8ajlpEuCoyU=;
	h=To:Subject:From:Date:From;
	b=N2+rL0Pn6kRBh49YuoX0AOkIWDHW2uy61N3DTwdKshNcTqm0/2u/3kfL0sawmqWYn
	 DJayi8Gohs2+Eb97vn7tGsicNJZ9++k5/WhrAHBv0zb/mo1U7qhKHxJMjd1mOvLgjH
	 mfFzIbQVllsnYT6Kp68v5l+aQVCxqW642+mI+Ef7/3liJcPZTwoywqHYOGTAqLavEx
	 RCbF4Jfj/ck3qwPXECYqBn3grYMppYMNsN/d22z4B4ckDAJlncfhXp1MHNwRyhxCeW
	 0vy/3xuWcXaKpBBvLapOyZLgezrWtZBZI8iFgxdT4fYfKfdiZWGW+J/QoSzhvD438U
	 2+4K23KvWOJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A2DC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145673362.2350.2792495156661623363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36d37d17ac386fdee9fba2c25ee9a30a9f71767f8fea27f461fac565d65e164
Date: Sat, 08 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741456733
