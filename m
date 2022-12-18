Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCE87E7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B77C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671334287;
	bh=UPvJz8i+Pu+xeK72GiTqqq0bhkTnOSmOeaoMNrJi+3k=;
	h=To:Subject:From:Date:From;
	b=shfsmH0onj1Vs/mUMe8Na3SiaiyM/8uH0m1tMi0ZaFMH41P5qeuZ/aD7QARZskG/9
	 Fr47Ou3iXpt9HoD4P2dB7IqMRzXx6YUsllh/DAZdW1Si9Ia5uU6yOuaUyi7ucVJEkG
	 FIXtMHbwxgqHAJk0L+R9PRJEsiBGW7Ql2vAVcHdPqOa1BGOeCXafjxDj346pWuVrCv
	 fLXvc829XZKbTyUsl7eA0Ee5k6OSuIkwDfPAi93OgmXGju8G1ecuDXXmML5wx/TuYA
	 C6CKQr1AuTOOVU8HHrfDVOJ6hqVHDFOnk14PNuqPFR8d37NdOKkPAH2lZ7TE4LvTcj
	 v/kc+S1nSM1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E3DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133428738.22127.14497490474948685197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2015210fe5f82587d124669abd607442d8a0d1f34b5020562edbffe8e9173f
Date: Sun, 18 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671334287
