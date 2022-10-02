Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D242F29
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C343C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664742653;
	bh=mvqBaTVl4OSCVIKC2llc6RRTu3wpoDt2yKHm5tkQegs=;
	h=To:Subject:From:Date:From;
	b=n0uoo0f4HBpSnD/iVSBasZek0C/EE61lHE5gOY1EotjRr3UdvT1+FIBtgGtvUuB7B
	 aGNqmHIHoOvfXxpsyT8XKSpCyW7C6QypPvTIaoAuPRy56iJVXPHQLUTcVdHlnO68gG
	 J50pog7VnTCNhg6pr6FlV50VOCGSMkq3ifyGWCXgKlkLHwL9AqHXxJ3n7ADwtUvbbu
	 KpnUTqwnKLIn3GrbMrRIAgnVwmS2PzeyqRG221EBpavXtVUMYEKHDigtw9f1GrWbso
	 jUqfhHJmMH/LGAGYc5FtOsibaQVSlT+9TiRgd3z6WeCrST06uvR0tULnVoQWzoWzRF
	 3Ira4ge5qD9Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5F3C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474265336.10297.10655465321202796001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f673e7019a977e1c1a99b5ecc62c8842863517f939f975d7371b610b07df3488
Date: Sun, 02 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664742653
