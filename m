Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C407F5
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A6A4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668223254;
	bh=LjTqNrddQasOgiqyKUSY9d9r7iw6Hn1Iq06Gfrdf+ok=;
	h=To:Subject:From:Date:From;
	b=FZRUNkyxxrjifGOTGbwizNY98w8ozeO3XsS4WLqbicmQA9AZfuO78N8zWGm1sepxQ
	 a0Er9YHJKhUEMJXmxFNqs2qckd3s3pwLyowyc6pTDyRj2D3bR/iM9Saql68e9mW+Np
	 Nm2rAwMmTYtH1JMoCJUs+IHi575MHIHDenWwFqgiPTIqRGroJi1LTdlKDbtOhTlz5b
	 x0yTqlSdkm+uaPU7gaUPwDjSUYtOH8rY2/RlE5oC38IDr5WQwcL+JXN6sGcu13zaC+
	 7GLHB9mdwUO13dzPC45DmthMSkxFrgo0BgqR5PUmcjjwfI+duIzZ/1jRwVIcM8Aaqz
	 RPi7ydJyfe5tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51074C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822325432.22213.6138864377128052437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3549e73734f3bfbe2710d2613de054664b195db4c004ed202b9ae583ae06214b
Date: Sat, 12 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668223254
