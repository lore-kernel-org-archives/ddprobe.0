Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347D62931D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790438434; cv=none; b=A2v1/Z0T/XnQQ8BdSMl8t4OpHAPvc3Nj3kHyH50meocf5HN6rKhfkQ/UyoOONO11Zh5++qG4/SXSZURp5omF2dfBqkXtl93cIztt5zVvPAG1RAjB4DGwO7W7Z8RtBgAH3tjsqHy+0J7U3LqQCTahFwQiuyFhqFHko9q/4v+Bp3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790438434; c=relaxed/simple;
	bh=QmO1JFWMuNSJUjdU8tHyrupWei/As4hEtTGXu89vcH8=;
	h=To:Subject:From:Message-Id:Date; b=gDK06dEcW1zkRkNJ92AobRzQfUxmAQWizudfzCbIAiylOyPsFRjOdPdJtZwhYoaaMZOLF2urKOHbfFcyaO8hYZW4J9qx5wkt/IP++/XpUQU1beMADHJ7XpOUQ10bqqqP7cN+v3AintO2XmjNoKGEaHLYLhRbJYqtXqzyTKIt6SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0JV2UMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0JV2UMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE934C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790438433;
	bh=QmO1JFWMuNSJUjdU8tHyrupWei/As4hEtTGXu89vcH8=;
	h=To:Subject:From:Date:From;
	b=f0JV2UMVIvd0MVHhb/cUEJVN+t/z5jNQqYOww9UhuOkTgkmeea2SJ5ztznwQiRhXv
	 VoGjRrVyF7hLG+1CgbgbCTgUIkf7Vv1hQ2Kh/McBB3Hb5R5lIfG6op/kH0v3BORk06
	 0/Z/I538vn88bDeh8W/yk9hsfkSg6uYM+M5GCJeVLNEB6Y/JK8XsIVJrZxtZrs7qeA
	 agnN6Fzdu2AR2bB3wy/YnZSTnMMEXfGg/JOYSpxWfCM9sAfV/aeB/3gnmEFu1rylWN
	 U7dgFYW2sJCdVviqCa9oDmiBRE0FrCUspjZm2nWTKK0m3ShX4qSjDgUoeCWwuLCayW
	 YedLw7uwGGk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C6C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043843369.6843.7379087699276411406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f1baea8d78ef154ed1a3822978063a213bedadc7aefe03e4df8012b5fdce03
Date: Sat, 26 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790438433
