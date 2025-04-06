Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EED13AA2A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743961794; cv=none; b=lECi0ypKe5z5ikNxdtAXEzrJ2QHBHgVC3E92las/lDrRU5TlU6gSzPh+vTK6b4UGmI4hxL54Kgzx1nqml7Nzob3p5A+xNRmml3BHADHD4Tp2tTmGrn7lD6U6sUUdg6dVZ5Vk3gFVTKwrmRe7DHwU7tj3TVgFFX95+/JkO3aGZ0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743961794; c=relaxed/simple;
	bh=0mZyioZrbp9fGfAqoN7PIZPFv8Ia+1tG3HbhDM/2MdY=;
	h=To:Subject:From:Message-Id:Date; b=DL7a4EugHldmiSW/kPBN9CjKmQqQXN96iAUHWWoqMcbME6W8g0MKreugYOcZEnaQXoAal9NyeW0WBzPhsmTq32VNpUkjqIrEylOlBb7OW7nFxd+KVzjKss/qMwPjTase1s3fnaOvHX4kY+efIEZC/swD6sZW4uZJpg2oJsJEvl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZXPwi1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZXPwi1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C231CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743961793;
	bh=0mZyioZrbp9fGfAqoN7PIZPFv8Ia+1tG3HbhDM/2MdY=;
	h=To:Subject:From:Date:From;
	b=RZXPwi1BvQFIqo0jMS2Tc/eC/rkWuoCOd9ii64OW88+U+iRk9KTJmaaqaE76P21o1
	 nbGp4sdLGjINBQHg66mXuhDUEY49ExI6IUzFuwzBlZFHALe3aY/Z5gKqyHuujds+fC
	 HsSX0Ei06AGsfgnOmSLh9gT17KBZ2tsKUJuRuc8HThEIYcveS7VrYtdcR4doapXVVT
	 xqUFGlck3jpn0WztAGlM401J2kX7IxV0pcwnvfvJHNNN0vn5pWcXAjcqjifCVclVEY
	 ZO/gBphZQEwES5s55wr8GcCV28JGLweKNX6N5gP0zwn/FHXTm/mxpAeafdb4UrConC
	 97DftIlT01NnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3128C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396179365.368.9946755820563160031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041b2fffeb11970b779a6b6330a855f684564f3462222eeaf2acdf7e3aaa26ee
Date: Sun, 06 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743961793
