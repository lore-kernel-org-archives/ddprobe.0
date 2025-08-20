Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8D9274651
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755725394; cv=none; b=MUqNCBSY7uix8XVim3eLrSF2bk5qcdm93if5Q8iGnrLDo1ymrGUPFR+i4wneWaBK9dLv/h/gefuBjwlkzkZ6kLWbEPxykVv4HAxZ3zkhg8lApqBdWCbhFTk9mpjVRLV+CEoEI/E6OoB6Zd0G5qo5r2oVW5WvJvvAP00eYlBuX4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755725394; c=relaxed/simple;
	bh=wUhkmoVqHh+q2Sz5tv1URrJdWcYZLM2G/XsrOhgur/Y=;
	h=To:Subject:From:Message-Id:Date; b=sHCxSqzYnjuMgl3SxURBwosnOW+ywSzyH2evbnwxfAOq13SjyMkzT+kc5fgAa/Sp4kH/bQjJh/gBmdEaqvSKYhPjkS5UepJoeFKGtokdMaV8Emc8f6tlQNikQCHhW5y9U3LZdyv3x4PLkY4kLgAxsr8+shPzoVpGyatAwOLeR74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuW0/GY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuW0/GY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAE2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755725393;
	bh=wUhkmoVqHh+q2Sz5tv1URrJdWcYZLM2G/XsrOhgur/Y=;
	h=To:Subject:From:Date:From;
	b=LuW0/GY7WDQJNPZIkQT07jU+THjHCD9XNO8DdNnQDBRL9LbYbxsDtTJ78IYe+1ZWL
	 +31XUyS6jO+9HbOr3KY1BhMO6vfBk8NCioOpDUAF7GmHDSViOqACamxC19q/UGAc49
	 a1PmtEFtxPQjAupOnAbBy7Ad48Hib0HGpfiaT+6hEGtDpafzYti3JNnIomkxJSNLc3
	 90Aszv7354dn36uckqyJqq3vf8cdRuc37PFPLgpYKt7JwC38sUqO0bL9igVSsMPFJR
	 IcjEYvgnSUgPahwXBmfZre3jAiju3AajDIrZoO3LGKmyX9UN9KRdo9NjDHEsGVewuP
	 pQrHRyvBj1H8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CECA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572539357.13256.9798921907756971409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c47bfd4409afecc32222ccb5cd125d228cf5550532c557bf697d64474cae28
Date: Wed, 20 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755725393
