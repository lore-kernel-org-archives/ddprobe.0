Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5F622AE48
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748002795; cv=none; b=Fcqyd39xdTDY2mfIkEjDF3d7AOeJQp3XbmWnByQ6hgkMejrBn6JVWr3mJOaHonadSyrjkbO8oMfoKWVyzfIzX+29kdQg6dEG2nh+hELtLY1v2M7iJpssx7M0MQo4dEzyzUVA6o2KIzf9duN4knq0lbHXlMyP42TpM5TWFH5uAx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748002795; c=relaxed/simple;
	bh=MEGR9RwXL5CWhBY7bQkMhMI8T7gGASa0b729TSiKlf4=;
	h=To:Subject:From:Message-Id:Date; b=gv9wbTWo7wd2IQU7pACRZ5J2QUEZmjPhe4mb+1NZrQfMAKrpb2Hcy9N+GlWMlycC8l7P3Fk/C7dy+J1XW0js/kcfUpoxyLDUPwNT8JKCgREwrOi3JTzQH7K1wVdsdP0BWzglnZzTdoRzs8PNzIutn/rbzZyUVVOGldzJgNEoTdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij8qQYRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij8qQYRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26BEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748002793;
	bh=MEGR9RwXL5CWhBY7bQkMhMI8T7gGASa0b729TSiKlf4=;
	h=To:Subject:From:Date:From;
	b=ij8qQYRBlj0HSKDhAGC7q+Jr4u5eNh9WhPs/K4wfls/3QBqTGQnxOWaagi4RGS/N7
	 S4oc7AJxNTzY6L3guSrUPWAyh30CeMk9UdQ0ZQBvk5NrtMKj1dpDbGFh3usGXexNfP
	 hwVCZeh7J3fCfe1xYQvMH0x/zpztOWwT1hJzgfb0todOB2ZyVNkp+1RoO1jWpPLdV/
	 haU4gZH2o82TV38qaXiVaRrodgx2fLO3KIcnbHzkcjWyMVuV/ryATLa3/Za0Huea+C
	 tcqONGF0f5MEsybD+MZo0z0UX/vhP5H6i65+BKKPFGD/9VmICQRWViG4bZrFb/BOUz
	 hBLKrm5SeFBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F367C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800279357.28090.5292191747056597264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb646fa282e4df00616fbb5b1ab596347e94ac5538f2f590fb455b5aaeb0a3d5
Date: Fri, 23 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748002793
