Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E032F620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95BDFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672099887;
	bh=nemkVA0l++cJ9vRQSK+BEh4N5/Vn6psBeXNeUwKScM0=;
	h=To:Subject:From:Date:From;
	b=NEgSx1ClQwCa19+G4670jNFRmzTzRb3b69+aLehMmvADBPk9iGgIfhFviy8MEV6m+
	 c2WF2CGk4fMG6mEfRNIP4ZLDe+k1Tw75W467lrpiVYiru+txcFSBxzYchPZuKyYqBz
	 GB1dGb7M4z9KChuv35mcU5l9g8LZLOLRL58ISWR4/TYY55EGecpVEu17x7Dl2IdebL
	 cDK/R8s8EVt4UG34hFUerQNjWAOeSTaWiziIjiD9PKwjrbpCsC76VVVaKHLPB3YAkj
	 vI3LAzLOdhYCyh9U7Tb4pj9ilTptR7HcTN/xgC4cnjhqz3wUkCZYFhA8ITHPEyOF3Z
	 PElNriiFVJz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78324C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167209988747.685.6519950625007669416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1876840164cbc65319439e434a8b3b692178fff48cce66f10f3dd06a3ec9725
Date: Tue, 27 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672099887
