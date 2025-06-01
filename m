Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4FB4C6C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748738394; cv=none; b=MITf6t3o7mx1OZQkB0gh3W6O4CYgOe5R+ZXBv2nOkEy2MJO2NRo3f1kDtvTwkxYqaWYXTg7LgCDG3pTsW4m45IsuGnF2jWifI1BUDa19+FETRb2buZgF6007jq0FM4AHmRWxI3cyOvuC6JRLV6UvaGL1xnqnbVRETbMjNpMsTFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748738394; c=relaxed/simple;
	bh=qdKUwLQwA2+JhwtyZJgHBHWDQnsMtwup2hrEjfIbUVk=;
	h=To:Subject:From:Message-Id:Date; b=SZ/nVece/UQcAzNgSlMvd7WhceSRFu3mc7877QVm+1lVdAbYWLsE7GGmN2W23oH8Qc0jq2/YjNzl9/8+/8ovkGI+ZCUGZQl7wXzZqglOBHzwah0Eg2qVoNX27Bl0AGUIfPY4FI3pYkF+K7VDV+ucmqmtfQQLcevUkgoIv0MZ+wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE9z4hjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE9z4hjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748738393;
	bh=qdKUwLQwA2+JhwtyZJgHBHWDQnsMtwup2hrEjfIbUVk=;
	h=To:Subject:From:Date:From;
	b=kE9z4hjMadFHVnYD+qloTAkrks2ymCt0IEYK43z9riMjuqps+ROXgCVs8PIeppOKX
	 kND5d9d5H918//9VmH9y5/qU5h8tCwMedW+cAgA0pfqWtk7PyhuRIseMcbtwSE3bhP
	 xdF/ih/LBeEMixZxylAYBzu6xE1c2Lr/hFo/hi3MWSKYOmxVPr/PiHllo75rtcNPZz
	 nRUox3BKiWTkp4wZIhYMxHUBnXDKh0Y61OaUuImvurg/dV1ei60ma57o4wV0e60sQy
	 n9N5OpQX0hDM+7EYKk7+mZ1LrvRWBjfD86MODMVjI4JRvoOOjnIo0sSRR5iunK9Fd6
	 UHT6NOmjwDpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF3C5B552
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873839357.22019.12724560493172401637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cdda1b52f73c5491cd40caac28d54a9e31f7ae883da86fdd9bec57742004c7
Date: Sun, 01 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748738393
