Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98530F7FB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756389594; cv=none; b=d4lwvd/W0HHWMYTGI+DJZ4O4JTziHy3vd8mVWo/kiSw4Wt7V/A+XveE7U8i+Jw7BMgsZE3DhI/dvKq6UkS7KMP66d/XEiAJFnJYVvPPN+zMQbo+mRE6fBr6qs6UkKyZBgZCDZX72XuDqkepu9fL7wHy6ZWVEoV71tVk6Nw4qVek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756389594; c=relaxed/simple;
	bh=A2lw/z7I2AWlHA/Z+HEdo5KIGTRtL70f9/fDPz8Ckk8=;
	h=To:Subject:From:Message-Id:Date; b=GWu19slz/Bb1jKrucsOhHKhd6WIgRR9MzNKzEIVeklujtIUGcyijb4cWSFILPa+Xw5czLm8Bar01uKA/EbthVtuksvRmyHvwb4LJy1+m+l/eM5/kCMKjs6d7SvhBZCV8LV/jVLIs3gUIM54tA2K3S2qB9H4D9Tzwek5wGtF25gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVqD05Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVqD05Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFB4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756389593;
	bh=A2lw/z7I2AWlHA/Z+HEdo5KIGTRtL70f9/fDPz8Ckk8=;
	h=To:Subject:From:Date:From;
	b=AVqD05Cpz0CrAnH3Tqy7CISjRoh/BWNt7Vf+izswKdLoCKcbBE9gFNUsYfDMgIIzw
	 oQhXmVsjMaQoLq+aApqhdIzjjiKwZKxX5jQbVWYV7ABtkalkee2/uYtJUKAVD3yxk2
	 2kvasE7ITWDCxmWnEmZt9t2yiASASFzoZAP/dJxYyi9wI3QI8q7rJzwjCZTsuzmvLh
	 2bdJ+4Ne8YfSlcfG10RvLAnzuahsEalnTbn0+o4upqYQf5RQAlFxvhJXBrhmJLkzj0
	 Y3xwUQuxN8ax5EqeLh94KQO3LITGlV9JDOIM36UXbsQhH9KsBfa1i/akDcp1xNF9WV
	 FUSz1iq6otRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE77C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638959357.7894.14286410234985862751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be6eadd9b2a355e8b821d2d12afaee214c58a0c41485a52d5b44fdf7eb24fef
Date: Thu, 28 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756389593
