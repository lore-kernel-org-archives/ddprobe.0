Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACAE3DE455
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786690834; cv=none; b=jJ1jvQFyYc6PLifhlWH++rOeof0cnSqbHGlACSnjH0wospMzONXtf9/eMHGT5vFK9qLxm2ks1zH48FLZFcNnUfklA0hzAsgNZzUuEQMd1Xgp1LiMvxvCbghIYYkQjZjsZ1B/Nt8xoEnFU3OxW0MluHqxoJLpX63g9tRn8JPZWL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786690834; c=relaxed/simple;
	bh=WeFVAi5+qQt7V/loHJqMt8s3FxqOTOM6zFYDdoywCPE=;
	h=To:Subject:From:Message-Id:Date; b=BrCHO9emWwxc0jgXXbsPk0+QwmXWzNgmKoF5boxyOL9R6bbLpVJOnDayc3H5aWKYf9c8hKoMBdsf7bM+FVntYodMZbDvGP65SWd2/Bz9irueTynjBQai7z4TO8ZspJDmTl+Lg1b00OYziopMMnM9/eZW/wnPTPKCxweLm6WOY40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlf9UgeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlf9UgeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BE7C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786690833;
	bh=WeFVAi5+qQt7V/loHJqMt8s3FxqOTOM6zFYDdoywCPE=;
	h=To:Subject:From:Date:From;
	b=Mlf9UgeMiBDCLhjbt7wKbBc9Z6J2BKeGN3TUHTD0dV7sEnMQ/DtcCCW9bSeDdt8G9
	 STpRjmTjhV4x2epg5yb9jsL77jdEMdSHbgp1HClXyPni8h2nlE5z8uYayXxsResYWU
	 Q03Yj6oElZ7AnTsrW5saHrjFJgKUZbYPD2p7APdOGMQsfsfoexEfYhAHbUJLFeNDuV
	 1MBKMIuAlhh5p9YgFeWW/gluPbJtYkABWER6dyv85B5qLv9tT7ggUFGM9UQb6G3Cf7
	 rCgK9Tq4SMTPYIHiM3xDIXb6zV7bjtkeJecf1HA5YWVxHxO+2v0+6OQwuNYKVpUxHk
	 A8OA6q4IMYtCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1CDC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669083368.21217.193714004323992222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9146a044dffaf6ca9e8e1ac905e27835af8f0ba86c50cf64ebf913a75c445464
Date: Fri, 14 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786690833
