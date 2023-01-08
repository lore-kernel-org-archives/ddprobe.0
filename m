Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1171FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 893EFC433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673173287;
	bh=mzudScUhGak8W7jZmk14iCO6at7luTvIsE0l+PSsyS8=;
	h=To:Subject:From:Date:From;
	b=qVf5RE9jLiz1uCgj8XL/QMOhbXlTXv4vY200EOO5i9ffLFSU0VGQDVulXTX/0IQK+
	 C5DjVLsACx5eY9JPQ6BYsefAdDst0jOyEwIU9puQAnOqjJR81JMVcOG2YStJAsPT13
	 /9REh2FL7itJyYuFffsxjugEhRarA6uDDzUV9SUGQheAineFgdOliruDYhRCLpTdBW
	 DJievIEYAp6PQit+iDAeZ/RhMedvZRvqqQ2jQ4azxaPqE/OhguJWU27Joxiv7TvZ/q
	 EsdOe1KI0ZstQ5Tt68H3HEAxdhBXCVpWs2MPcRdJoAqznN2O6GKx7q7wabjkZExLSp
	 BsBMySKq3K7rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6989FC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317328739.31598.2478412279982942469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb04e4af68987fa5c4b42c192f0a6957da617904228eab298bcce57875d5a9c
Date: Sun, 08 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673173287
