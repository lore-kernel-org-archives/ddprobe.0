Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974B92F34
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B0FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687778588;
	bh=qFNxMRh5GjMXf/kA9xLPDzw3Nfcz7ht16MFvqIqA560=;
	h=To:Subject:From:Date:From;
	b=bJSEbWkxuODuq7XI+RRahdZBNTgzDkHWyFSkDpu6T3eQp5KlsZDdLaZ1ioW1GQeJ1
	 K1v7bn4RQ1sdXX2WZMTWQu7oJr60UAm41vVpRT6ETsh+gATgzRQ0gilz3X9Qoyy7NG
	 pWKUD51aFrbFeutgrBYi+TcDupJ5yD59g7TRaG6TziAA2vXEjzlrFk0sZFN/r+oeUd
	 roqJOHmldNMsn49/p7Q1zT0/vztN5F8HG5RX2dB7EGI5I6euHdQXEhpsfecbV9EcTa
	 6yiKWdUlVyd1+pFuxSZcu5yjIAen32tFkAniVrjSGrztZgxyJR+vgUTVoamDFfTP23
	 yXK3hqVhnRzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CB1EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777858873.6781.7044372499080409244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aa018be6c33bb5c513ba3b00ec8881b9242a8443c4e61e552fd551d713bea4
Date: Mon, 26 Jun 2023 11:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687778588
