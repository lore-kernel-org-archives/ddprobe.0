Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945CC4C65
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717825643; cv=none; b=c+/XIsC6ugoHx1OcWU+Q+DophNnBMqGSy4dbBWFyuU9SxRDeJvEyrc9vz4Oa6rWTCHjs5Wpmm7fBmsIwhjb3kPfYyYPqVvCFAjwz5P91lL2LPip5gI4M6fc4Xn0NVLnk7QztRZZssShVp1KOBVJtnEHpfj+kxC75OTzK1QDaQeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717825643; c=relaxed/simple;
	bh=llmVMHP+JpLDbp38u/hD6x82RF4yUlrsxd7/Jz3+3Ao=;
	h=To:Subject:From:Message-Id:Date; b=H+Eggx+JCq9uYk+DMUNmmzzMXoboP9LWAAPeF7Dni4uZOv7BryGIt+CmyAILF9OA26Cd/CGinwFAqkfMif05u5RewCyBxpNkmDwpcM1dlAjSyXeE0WIYgyHGk1z97UZjpoWHDf/PmKgzojpBpvJZ/sDWjMcfxdG3xsLJPUJg4wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMwr1+Ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMwr1+Ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F9AC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717825643;
	bh=llmVMHP+JpLDbp38u/hD6x82RF4yUlrsxd7/Jz3+3Ao=;
	h=To:Subject:From:Date:From;
	b=DMwr1+JiwKJGcp1iQwYjTFHfDvFIDl0jKFEnS8yr9fdJWbi7ZNeVl6j9GQwu/d+Ik
	 6RqzddH0brX12UvsBgziXAzra9i9j5YYuEnJUQBmRBH+mySTldrdeGTIiwADbpnfgT
	 hPTBJZfrufrI3wWbWqKerOyROkfNT6ykgm5xWJ/grlV/o/qGklLyJQj0tthHtXfOTB
	 r8TToHLMiT0Igej8jp8UIrDYhOXugxQw6+5Gd3vHHBUn6Nd89j32YVvG37wKOgghO/
	 px3f9GfPNE8m+I/5Zc8VvFBLqrRPi8HT4Bq4D2oAS5Ro4lUUb6PzkGxwP7r5v6m2+M
	 7/Xh3BjtZKm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D830BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782564284.23499.7243988787161185112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0740ffc98a1e59f51528c4a8a0b42a56f56afd15a01f47eb7ba413e9b3e04f9c
Date: Sat, 08 Jun 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717825642
