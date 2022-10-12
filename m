Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD4717CD
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFA3C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665575453;
	bh=SJ8FK2N0oZ7aa1zvgWSkBMtMHHVZ0LBJc2CazNhrBzo=;
	h=To:Subject:From:Date:From;
	b=n/vQhbZA9w9viasHbsNJ4gY8tMSiVTOqKf8IDg/67+9euoJzr2d4xhic/znepxHkJ
	 C+AYvNrqmoSlKDdDYCIwrKwYksaD5sP7VpN8MciRx+6/N/0nZOcAH0IvGQiAaKVPGQ
	 kXwKn0kxt3eb2Fi+4Kj7eErnAAkQeK4aAaTxsSAeJiSYEASxnHNxIVgtAm7b+gADCD
	 d0oRyamDl9SGk34UOGRdZTKbTVoVvmGU+TbW+SkQh7yW3W6WppdN4vuVbzX6WP1iiG
	 MfIrdf33oHWrdNJLm3ffszWIR6c/LGHkqI5IHHmVAoXUYyFrSZwxeoJBJN9ObPISzQ
	 KPttDm/5RriNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AA4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557545333.24782.18339137589855628530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9867f639ea2eada2a463498c90b9ed4af68abda112358ba58d75c8cff4b9cb6
Date: Wed, 12 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665575453
