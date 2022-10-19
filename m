Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97B028E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6490AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666176653;
	bh=c5tpvhVzxS1SmoO4fO1UmhIrsvaT23UwIFJov9jXCLs=;
	h=To:Subject:From:Date:From;
	b=aNiAcSGv3wLisqahw/4o+PboeFT7/MiyzZ5w4egRkMJaAyWNDgRIwYcnpCFVTe4rM
	 nvp9/3YqXsZ6kEwgEgjDKiT/N57W51qO6zaTnLArPop0ffSmsCOGmVNu27CYoOvSNN
	 qI4ywSj0otfDX6oNg9trkqKOM/QEm22DVJ6dlX/zBx/KaVzVBwc1cw8wfWD3QOPIov
	 39KeAbewJnUbyimMmjJLnDadxwfuFZpetyf7xZPYeGr0BaStbRvVFmlbODzg8KNoK/
	 ViPiSjVyWMvYIo4DOwpFNDV9uwjMWLeG7qdvY8MzALvBmbPq4QUXp31K5QNiwKxI0c
	 LdlSvgZKgiHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF6CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166617665331.28354.7207921654186022371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f840c45935a26b733fd411e3718587b9191c954eb759e76905ecea88a33dad56
Date: Wed, 19 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666176653
