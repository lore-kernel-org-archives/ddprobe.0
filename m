Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D277F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF0DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663224053;
	bh=nhYZ/TZSUwOWyihAbSH5EKAa7CPh6tMZOeRNFzxj4RQ=;
	h=To:Subject:From:Date:From;
	b=mnj05FjPiPH/d2mgamUokHuUEVsHND2mxTfowaj1+hCsocIDtifQ5ehlDyAj+l6O5
	 sUEi29LX85TZtZ1IuY5yqit3iyfzeGN7/A3KuozRVpCY5+gmfjAsOKxyk7kZelLWik
	 RMNVQ5Z7XvpSr2S3vIvbEdQXWj+AaxsC5AS5pczvaBkERhgIkyDTM5qhqEi1HfqN4r
	 9I6IW6cZtCff1dHCh8EA4BvWoNnNdxrSqDZ9JuII1pzlxocflDd6NjuE/rBBeWgLx9
	 nk+nicHAbb/wKXq5CPUcrsNQqKSBU9LZsEbBxALoj0LjwLIrrnAwrSgGRpsovxBoAv
	 YYtAd2jrml7Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5548BECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166322405333.20084.16554729197548254989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d96f30863f648d6fd0d7d062b87611ffa8f7d94240a4ecf67d00182ada9d1e3
Date: Thu, 15 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663224053
