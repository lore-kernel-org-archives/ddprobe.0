Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B9C23D6
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816E8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674025287;
	bh=pDEfswxolWBIH7AidYf0LPdct4PD6lnsJPnYbUyb3p8=;
	h=To:Subject:From:Date:From;
	b=nPT41TvDErx21Ez8K253SzXfYJWvpEFHZt6z+KNVQr7GdEjfXZcK+aKI//lARNPNN
	 2rQLcFnv+C6J5Fhp7y/96hxG6wUAu4bcdYwS1BYyQTqLcWcHMqvC501sq8GXY0Yg/i
	 YAtyzS82FPpUFYQVdZPfdyUOUVh3w31Qa9BdEpH3c6NruKlnnFfNvmpvgw7c0aCQ7T
	 4uJVwxqDXw7zgbTA/tJOTULDuJVu0+6mdgPWhMXxW59wIicHgJy/RWRmkiWTP2B6at
	 VBE3zWrlV+X+p50ELGBL1XSLvtip5M5x8aR8w148dwwNTpWYtA+I4Zm49q6HFekPk4
	 ZIdmrCl6lFjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63719C004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402528739.23338.14194665336745849844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a70b8d1a3e8892acdb901068f0b56fe96ee8aed6535d87c9b0e575c9105df97
Date: Wed, 18 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674025287
