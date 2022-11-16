Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D343815CA
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8040DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668623454;
	bh=qrjBiS6TyGvQfDvRM8OEGcNjBC3hGPC0PKApvMPx94I=;
	h=To:Subject:From:Date:From;
	b=bf88ueQqn8mTvzk42aKx4hozyxMTkE7QTg5Po4Oql+F8YoTyz7xxHrYKqpYwuaSmT
	 XYqWkuLucjmaspQd9+gi/AuMTT9+X1eZjVulXXdRk31qre5IstE9nbW/my/Z0mYeK7
	 LNalKDA/4fafjAfflnqE99io7wovFPoYZzS6/+GrzlwLM0ffk3wZkRXZF76+5DSEr+
	 +aMe+/9BJ7+JtvT1U6S8NcDTdCBvCh6a4bQvGwXUoO7WLPBDoApOxNjOrqpzTfXG3h
	 m8yD0N/S46hGLWvSdALSRboR3LMbqZipQQUYZkpWBQFEaNFW+iwfTE4gV7Z0me6l9I
	 yOSWkAS53EFLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677A7C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862345441.29134.16324270713094911932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d92e05b115c2f18bd07b9345fee314cf219e38b2d6791fdc95b835ca5ff9030
Date: Wed, 16 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668623454
