Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DD0F9EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748857794; cv=none; b=a82MmAJE5xT/zfaYrah77pgcjjmrOA1Sc1UVuUtWIpw6Gb2HssTYQKmesg4lg51L366Yc+rlA2QbHb+jUEWL9mWFHjMhWTzkFgng+vdydgZz60m1Q9F5egK8B5M1mb2jOJ3INMo5HqmmcCLI4tXnc+R96SAP/VS+zgw75wHU8IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748857794; c=relaxed/simple;
	bh=1X0QdbGXFtdTjHnpAF9ikZpH8FplgmF5mFqGWAkAawA=;
	h=To:Subject:From:Message-Id:Date; b=TkFwMGYrlQnoheDfnXIe/QWAtRLKXVdyEqYzbGI1YPGcgfSz33lQ8ZxNmrRWv9JBOAcLhLIO2X3a8dd+OTuLx3NWyzJcQ7mIRqcfZvtY+6ZFZUMJMtpKJb+5aMq/YdfAxFE/2u6CeOequDb4LAUDXWTuRZuE0vQHQ4ReRmEjxEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCkn/HJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCkn/HJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED5EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748857793;
	bh=1X0QdbGXFtdTjHnpAF9ikZpH8FplgmF5mFqGWAkAawA=;
	h=To:Subject:From:Date:From;
	b=cCkn/HJaRaAFsl6jinbyvFGP92h4MbRxTYZya6uOWWA1i/YQ23wW68+TEmrPV+cC8
	 vC2+ZrZfFw9bOI16QERgN4HiC1hG2DfdQJZoH+Wb/fT53hfj4I14J65NXlrxBoXBVe
	 gFeNEqLZXlS6l5QmqtURdKm5xIe6d3lFqM4YpmQgHBOfMY4SZJVY2MWu6pSLw3g714
	 ouJJUwnN/BaUUR80myPJXiRWzeTkRZjMoDCGFUps1KVSAH5z9+9kbMeZVWswXbIn6J
	 6LuU6WXW71Lwfa84da72k5J6vdGipFW9M+YGcsKDny2uRYi/yNAtAbxim8vWY271mw
	 GpV/fkGH6MeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F456C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885779357.14564.6349065148062545192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2669eef1b7ddc176a410438645cfabbfb41f2e5616dede9056f2ca13aed2c6
Date: Mon, 02 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748857793
