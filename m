Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF1C1A9F8C
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760905794; cv=none; b=Tyb8IJm0CMzBooM+qE0KubplBsxTCxOl23IU29w7KL1jVbHFlVi20xB4pfLSGqsdz6pKWoLn/hO9qohw2EoP0J6drSWfje1TLt2tT3jI2t0Axcx13G6YbT1qhNBswkbt3IAFh17fj0SjInt6MNFYKdDjaMSPEOU1lqfYcRP0xYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760905794; c=relaxed/simple;
	bh=Sjf0QBTVINxlmzxodGmb1w3p6jS0EVFMYu+uEYmqT7A=;
	h=To:Subject:From:Message-Id:Date; b=LSZpDq4C+JmyYmFQ95afkhDMqAnVjGMy3LUjnDA+c+yewiqAA1v6ypAt7fuVbnwI16rxv2JHXIMGQN2GsxhsdB1CjzHKMm7t1a2nh6X26eEgG5lWWBqk9ST9nSICUdkEcDwWiynDWFvtu/7obnsTH6SzAOJRU610njSMLdirPaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg1tPQRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg1tPQRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760905793;
	bh=Sjf0QBTVINxlmzxodGmb1w3p6jS0EVFMYu+uEYmqT7A=;
	h=To:Subject:From:Date:From;
	b=rg1tPQRz4E7MFJWoc3jfz+K0bl8WJcQX+MDMxD0abW7WUzmllCyetrIa+KFwX0+G4
	 FtPV+BFuaTpMqNOW3nNkuQ9uT/HAHY/g7jW1c+gDXfBF8wVgHzC7h3uL69huJVLErR
	 ujsGZkSqX39wfFxIQDZE8jSEdufC7wvVkVgSjt+PKd7xQrp7y+L5LYRwxecxk+pCeW
	 /z1ol6SOo2aqupiqcsbdQOdeB8BG7FR9CDD+RbQxWkbROotxCp4v8hC0sLNNht47/F
	 yM4x8M3t1h4onsVOL2uI4N/Cmvs6mZ6Bn1ozhd5QvV5E62lImgZTwcL2GZekV4eNEV
	 JxxnTKUUtUysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634ECCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090579360.373.15770314565215157264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89665576694574a21f73e0f5004b57c57239efeaa17f12bb4332b2f75c0adb23
Date: Sun, 19 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760905793
