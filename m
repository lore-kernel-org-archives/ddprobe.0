Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A0566B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 11:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9A6C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688469368;
	bh=KqpvqieL+zYK2VXec5CSDyWpJ/DYA65K4+3HU0nCOPM=;
	h=To:Subject:From:Date:From;
	b=t0E/BzgPLa3HVz4xKOoY1PC4IYZOqOjUf9qJR8mDkMwp07csINTZB8jm/QFdLiw9m
	 yyEXs0NO4MJsuBkqQntiyrH+rLXj5T+QWqaN+X7SGEA0w+jRrlBT4hIn/1p/eCmFKQ
	 LSxGQOy7SYDb5bdXfKQIqy/HLUUwn4sYoTsWfs9FavvTrMAfrZf3ePQn+CKNjXUKjd
	 n7SA3nZOapj4wgcghZ3KX8L7h4Z6nlrzK/mOYb1uiIbeJ0eYv4LdmXSHrFSqbUoeN8
	 o3qk2Icz7U79U7galA8aDsMSYNWrCENgDEitMZ9ZiB8bPTAfXrzw4zP1ONsg7VxXVf
	 THApN9GIw7hbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E86EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 11:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846936871.2635.7262856994107383651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9450c78aa98ce5b87a9d1563d39ecc7323d03ab0361f238fe6b86301fb92841c
Date: Tue, 04 Jul 2023 11:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688469368
