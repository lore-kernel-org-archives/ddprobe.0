Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89F4620
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBE9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668132054;
	bh=JIOynfvuNgtXf48/74TadKdVqG83k8QRDt+qQWAupjE=;
	h=To:Subject:From:Date:From;
	b=bseZAM11Vw5RixswQ5I20tG/+YTRfKbuPgw4viMafmBHSxDH/yFwgC+fEVRF0fBDc
	 uZV1ho2xzPBDktKCj3TCJ83QbW0K0ofNlVMfbSDsqKHSCdQoSbl6ewu0xyJ0sqvzwO
	 hMIrNRWauokgsZoNOqfCLTqxXY9AwRD1P9RczgJrZSH0NxvYZM9Z9MysTUf4wlerwM
	 iJv9UdHAgKNqm2l4TSb6vqBvnh3tdpjUkhkTTST2RqIJ79AZPSrWUwL6/Epk51IBu5
	 X+UnA5XWlGNacm+4RnYVHI5pqJXUigj4+lvF6laXXAhI3so2upehB3npHNGYUF94Aa
	 Ir+XWtvxqqqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52827C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813205433.12601.2065822362342871093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e103102b995a1a3ac38e8605d944df649f374e7ac563035d5b4aa194c6d66ed5
Date: Fri, 11 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668132054
