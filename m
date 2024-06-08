Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AE8FC01
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717828043; cv=none; b=sVhdKm+HqSthu8ycxLTYj4oKEDi417H7lnGRtyDzOQVc4qfu30XWiZMgKLF+8ZJ899VpGWf5zjKkFI6K3U4mzAjipefrnl5HXvnPKB4qa4GKwnTbjfi5CCr39JpYGgKj17DeTGfZupi+q4phwmhJ/8hMTqM1dPlq1MKrCywQXh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717828043; c=relaxed/simple;
	bh=f1jwaXkxH2uB0r6hGMZxo7uailxTjQbOJGa3Y5dntco=;
	h=To:Subject:From:Message-Id:Date; b=JpRWdl3vZ5PFoeVZnABDBXZQvacP0BtPSY0pSI2JZO3f3CiOPcbNrZqtqJDNBxwl20gOK64bfm+l1Yv94mn3Kuwvf/12U/eZCWJ23BZrJOpMfC6RnhlVkV509QUX4YrWWwh11zPdZsRsxjpT3nb0kU8pFt/8GN/GKF97AKu3XQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQX4n6/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQX4n6/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 186E9C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717828043;
	bh=f1jwaXkxH2uB0r6hGMZxo7uailxTjQbOJGa3Y5dntco=;
	h=To:Subject:From:Date:From;
	b=CQX4n6/4pbL8bBGVwlJhv39iv+G09Pv/547hK6GAvJlCon987OD2Yl5pw9ewmXBf4
	 uM2hfZ/3yhH9Zu7OqhrojtB5GVPGkptjIqF6OrjGWTl6UvKfUTHUKlPEIKEeKedH/6
	 uogs5RQuLPC7DMR/4gYJlKU8Ptplu53Hf0PNzZ1wQlaydQ0YLfee+Trh/ZW0KbAvK7
	 OHKghs7r/5IHkPq6faJ1xk2zjnH2TQ0RunW8jynK6l8Wuy5y1qZ3Met7qYBMZBX30Z
	 JeYs6FvvjlTZ7gJ1/IKhVJQs2JjCZgViHOLO0vVv2UCBWEUz70OdWRj5BFziEj1SkD
	 tEmoK0VKClCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E045DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782804283.25629.12307566575928274737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cab02dad79f13624a0011b78d128514b0f18f4622405008e353577a03cc4617
Date: Sat, 08 Jun 2024 06:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717828042
