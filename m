Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8997E
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce64NAYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C246C433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700038096;
	bh=TJieRgpjJQC1wdE4H2sKKLapYH6lqlVT7XSlIaNxGyg=;
	h=To:Subject:From:Date:From;
	b=Ce64NAYRX64/gyGTlQDgIgxT6E5VJezDshVLsAzH10zqhgnPVH2+CS8xHzmTthui0
	 s55EXmkignpx0QRnNuQL6Y22UqOzgVEvm748BEhk0rxOFYJs49fXblOXnEnvA3odQ1
	 GE6XFsmMOB8Kw+dWs7/7O5PIKsffb8FWd/evnACz+aTHJX7ZEgb2ESp7aYbE4UGgsL
	 D6M7r6AX8SnVG3ftTm6tH1vcgFit+75EtWumojBqgYBsFNsB61RvRJSfn8hEbfKS/Z
	 dJScOTF3mCkfkcraOj9Ygs9hoL5xWMlli5QCnsgpRDMc+ulbuuM5i8Pjb5cgPaqYnj
	 L23Dal1QXpB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D254C07548
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170003809649.32042.11235111645556497538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1033f736f579965b3d7bd0c42eb74472d4b0f19e6490c6d77fc7a6ea17bd89d4
Date: Wed, 15 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700038096
