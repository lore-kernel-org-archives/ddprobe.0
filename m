Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FD715A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787E4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669426854;
	bh=eNU2QjMxNAJi5ExyinXzQwOcVb02KHm9XaqUofD3aKA=;
	h=To:Subject:From:Date:From;
	b=R7s6HfeqDeCnvK+ScDlD16RAuhDh7/LG4FMg7fozJ+b/tDQ15/e44qOPEdHzauAPp
	 F+vyYKZuaV93Ss7WOTTt9ukzIXxE+DwkPizCzG/Iz/I0Jre69kuqtiF6XIPmZkkcxA
	 EZOUjsilmf0B65cC+VkhLvkA12PND2Ab5pkU9m52P3U9N/E9jHLLtKhqr/sMKuAogw
	 IUcobX7j/BQpf4xT5fFx5vZaIbUCAEUVAwGsjD7gMb7R25niZXO2SCP3jXZJvwKved
	 g4uWLh79HuG1Hlt4RljF9BTyGWKV5wwsvoKoM2eSQD2RwGH+9nChkn0RajpSPm+f0U
	 oSCe+Y0fEVhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0E6C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942685433.28320.7916712454046040587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cf3f861d6db7814bb1224ae9736e9ca0d5267a9933b73e5ff1eaaf317008a1
Date: Sat, 26 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669426854
