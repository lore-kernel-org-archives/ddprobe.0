Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608046A6
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDrpeExx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1A1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702192096;
	bh=NHropAZ9J9JK7/u2/aa4AL2LKEx5KX9XkyYfo54b6qg=;
	h=To:Subject:From:Date:From;
	b=oDrpeExxzlwPvoSmgU9TBZcb/u7KWXrJR9+EQXPNhKeif0cIS+hWMAAYh1sfkt8Gi
	 ubPJSyzvXQriC0oc7ybVlXNItiRObyH8JXN9vVy5ca+yJcchdZYYOjCfPicNKwxs32
	 nkvMHWkUk5fCFBPW90AJ50lvmeeh5c0sL5PRe6vuEkfAYLvRgsIveKcWeOvo/s3J7u
	 1EMEfqt6uYU1EU+fq2k/DzNQhOz+dWOTqDaCMIijpoitWBU9jPMQTBF6woSKobzZE0
	 a4OSpY5GTQ6OOtrZnh0MoWpP2G7FkNpTLIwimAtn9G7UKNIg49NdpXcnNTS6NG9J4V
	 kswSulDaMDDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE77C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170219209637.11220.261496806006683426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f889f6ada527fcd1bb20f82b759c12c10f701991f4f038cd896792a83f4ab39c
Date: Sun, 10 Dec 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702192096
