Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428DC189520
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742839794; cv=none; b=l143FsbJyrhYxok3r3FRVKJhEphXRl46FFdaW4jrZLUm0pIcRgL0GoxEHBBR+dIjZrnCoh0V+BTYXt/RZfko7R5XeHUqbKdNUvMSeD62saLiDVpPOv8xtxrz7GEIYsm5RKEGtuUMWAj1hsljL84Hdd/LwGbrYlky3W183Gq2gQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742839794; c=relaxed/simple;
	bh=jEgqS5iAhIyb3M8RXJfQOALMQxb9KwxYLYEo6RAjuGw=;
	h=To:Subject:From:Message-Id:Date; b=hzMoJby2zoXQrZhyhKAH03j/B/dh1WOnkibizahXDAIhVeuQraD4tLGHQ7OhCXmb8RWoZL3QGQU7s6B4dZkQNy2qhwfV+BXaDoyekI6Z8DjEf3NbJFbUW86l6AjrfBPsemEwJRVvtmc422wAIs0gamHVH4BzSnNZbvApX7YwUo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ1bgHQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ1bgHQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742839793;
	bh=jEgqS5iAhIyb3M8RXJfQOALMQxb9KwxYLYEo6RAjuGw=;
	h=To:Subject:From:Date:From;
	b=fJ1bgHQnehq1kEcWkTQZxZYhZ+504/XBVR+gtaOnjZspQkhDRJC6LiWWHKJqDaW50
	 gORG8X+ff+l/r6x3CMQ4dLAJOX2gyeNVpcfV8NxYOm3s3eHbrNpBu1je9PyTYkYanG
	 adoIYMeR3kjsZB6xagR1Rmr6ze1YJ7UAGIziW3Ckfvwb7dM0+cnQaQeCK07gLXydAO
	 9k5nNTggc9RPEt6eodbKALnMRuCFyzcK0u4HbL6XUr3ky2N6c4RiQIYzoFT2OGvsE6
	 nm8Bjy/WYV2QDqef8hrE6jfAPPxzL4IMUBpIYXEZEKWYa0w0r//8MtsfyIE+JfBVc/
	 4xNgGnoV4/ytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99601C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283979361.20952.15764526465128094005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac62a10fa5e9a0133c0f965b36dd46b1ea83d0678a1c5ffa6a6ccadaf51fd85
Date: Mon, 24 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742839793
