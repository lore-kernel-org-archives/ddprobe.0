Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C5218DB37
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766148834; cv=none; b=V2YFBwkf3yvzwETEmE9+YqVzKZeQCJIAg6WncdHRy5CAYZiA6RJdA0us0ZyzZu6OhXkHHc4M72/mNPd2BRDeU6o9Hr59r9bYTeYyKOoqJ7KoL6uOawjb/SUcJa9xV19V89nl7LohO4rx2BSiL5XhxgQ40u8walkm4DwYUH5PN+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766148834; c=relaxed/simple;
	bh=mqe9xhYp18QOi5upYWlRWLHf/B/ICBxqKs6AXWdoR1M=;
	h=To:Subject:From:Message-Id:Date; b=Y+5FYYaxf5UZc3RN0TgemiPuW37FfQbuV/CB8ToNrYYQ56GfDWbpujVi0K8zCdIqRoAR6Gq5VrunzLIH1d2E4zNGDwbh454bahNh6jvXjwtjf8CDCg8ulE0uOrgzBgiRcqOe5WV6hqzA7EyR4cNjbevdcd5duM7+j4DXQC7T2bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke3s71yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke3s71yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B8CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766148833;
	bh=mqe9xhYp18QOi5upYWlRWLHf/B/ICBxqKs6AXWdoR1M=;
	h=To:Subject:From:Date:From;
	b=ke3s71yoBSdKJbdsd71amLeC6/lbomSYeo1gvdgMMhXrYXacIJOFARWjzSRm8kTAj
	 AZ3T8L1zEwFnYUK6hCjt/q3DhmAtn9trgK3mc0iOrL4J+uTiWyCUJlIp7cGM3mtAfn
	 Lj4wyq7h0w9Yd+nETQ8lrj1l0Kf7Eg/RM5NXsmFVYbNcE3FOvjxPNhPX78c0Q5zwuz
	 iNl40h7pPt1ORs78BlMfPqJwEukGP3EsXXoT/L5lp0tAX9zc82wXTVwWSq4gLKK3pO
	 riXqQwWB68X6ZqqGbbUu4YhzqKDvJdpdxiRoyz2yR3Hez05EmZwbSGvFlX215tUaGg
	 bB/zsahwcgcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96208D78763
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614883358.30128.8755421924948034474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba779845ebf495abb170f11198b56121240cfb95d2dbe902640ad3b0146fedc
Date: Fri, 19 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766148833
