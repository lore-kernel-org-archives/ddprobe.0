Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ECE320D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB26C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673728887;
	bh=xSy5fJ/Ahy9XtwxG+s84vz5zRdcIZ+6y7W4KljwXJOI=;
	h=To:Subject:From:Date:From;
	b=q8nL+w6IXQYJ078aPk0x9dhMZVzgqX/uRopJxkg/Ip5T1CpWHjzCwZd5OMpNDPnmv
	 uFpgtIFZx06yD2wx73UefG+2BAD7fXkXk9824JsyhHC+AOXCV4C6YyTHFH8GmhofC8
	 SP/YUkMUoKR2U4IwF9DSXh66qQ5IjOUG92vVlzoEkWF5YY4pFFdfZd2aJpdfTgEbtp
	 nUvrqgriD6WAZ37bjABO+01mdRkguJeTY834oGD931d9DDeNvg6x3Fe6mnnWgMikC6
	 wGSHkCHaMdB1Parbo7rIV+oVx6mwxXCXB5SMzgiESqpj9EvLaY6qmb1cqM99wpNADD
	 QdJBn2ypQautQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61374C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372888737.15029.5762072480832661729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035e87716ec67055a34b7c359cee0c73ba999f01f1fa21e8eac2cd5f8016aef9
Date: Sat, 14 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673728887
