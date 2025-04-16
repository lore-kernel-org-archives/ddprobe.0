Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3F111CA0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744808394; cv=none; b=G48wpb4EecRlxDHYPt/wC1iI6NjLlGX5g46N4b3e6AK+7enWgCqZQTcfB3qsqOkNBCFHmNmrEBazNw+Nx+eI5J6NNYi+gJ1v7tquscMCd0gRu2Bmrp1P058thtT3edW1HR28Ud/1hV0WsCR2S6eX0XelJ4/oOiMXZQeofJQ31wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744808394; c=relaxed/simple;
	bh=+oz83PmCF0lWnmLtspHBin+ylBIPAkRsHEHFtivaD4c=;
	h=To:Subject:From:Message-Id:Date; b=DRIMYSXUOOuNQtdF9LUZpTLJNwZcJvMcYWeoNe9mrm8lPsh7e1WLFRKGNw1YckbfCLrQ3FNQnRucJ7GMtyCifTW5n10AVzBYzNDrhtZadYTR0O44gHPY+j1v1fV5KgMigKaStM4m3mRO2x8qJEulCXbjulheAO9quCHfdRMSBuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bz/F3/fn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bz/F3/fn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81FEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744808393;
	bh=+oz83PmCF0lWnmLtspHBin+ylBIPAkRsHEHFtivaD4c=;
	h=To:Subject:From:Date:From;
	b=Bz/F3/fnqdllZ6bvHrnXx7XPR4Dy/TMPhioeNbpKBTL0Hj68+ES8kfAZBOnDqybfr
	 CDapUa2T6N54QCI3fmJ8hmQXg3vi6ifcHNGWfhYj3bd7jgj/hJx9rbzojpLCvWqWmJ
	 bjOhHl15RS7VnjPUIAAF+fxCfqeQsv4m4PQDVvCb6KtwUJYrj0hXtXZagFMizmZiSU
	 8yzWBjkGpY0KTrLwPxpqFhxwJ/EWlnGo/UoT3ReT8sMC0AC2ycNsdQjHoAj7TAg2I7
	 KMoZApxGVf4BRQPn359SND/itOTCaL7By4RPYqgHyxkpa7G3GPb4FWGhkulunX7zKf
	 d5dzc3fcHvI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC8C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480839359.12421.4888691614834962486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6902ae5ea91c2d401d5f0b2558ce30dfe675a0b44218086daa87f3cf19be1352
Date: Wed, 16 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744808393
