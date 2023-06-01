Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF1823402
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 10:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D323BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685616305;
	bh=d6XBQfNjDR+iG3yWytjoky7biOQkNtvz2SP9V+UlDJo=;
	h=To:Subject:From:Date:From;
	b=X9jAXYBA0G77wqXIheJh4Cnl86IQrblGwPjsDUEGEUzi8Jm9M27qrcnQx0NZZsORb
	 GNinyZ7y5bOoH2dnjbOEa033+7RXzzt6yTS6yTkEellcm7gR0JK5XzOeqCcb9yuRG5
	 Dngbz+NfCev2V4VjcpaT2UlZHNfF2gq//J8HkI5wcu+lEr+2WLj7fkzTujtWK8TNLe
	 t/ZEV5AKrz0jzYakqRmG3n4zRo/Brvmravze4e6CIBKIRz5no+YAhOayWNN5mLewuh
	 A4EYLME0pW3UCN+HqcZ6DVHkMPUFaREajw+bCqDWyvd2W5FY//k/ijyBAdqi0/vXuN
	 bnP0jevGog0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E3DC7EE29
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 10:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168561630575.13859.7654234117086678032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4b3ce265481e7cc5e83dd33e8c5b0834bf84e7eda7f7a8d762ad91f73d9d59
Date: Thu, 01 Jun 2023 10:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685616305
