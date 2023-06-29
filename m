Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F84014284
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0817C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688065988;
	bh=QBzSbpQZB465GNZWNno8DhDHy7VePMEbJby7f4Yjhww=;
	h=To:Subject:From:Date:From;
	b=kRkiqiXnTxFcS+Pw3YyMLOtAL1dXSglRk4cJM4dUoUDiXYBCYyfrhXez3BrN850vg
	 F7T6xJ0GpgIc7qoQ26LYlZzFNCRKwjCRYFFvNMmkdAGa6+M4LxZSVlVkPkG955l1s0
	 8oPEMCdt60lq53cyG7eS/kB9mOUPyTLU2YphAjsp7+IHb7KjxaMTDu631sSFGN/ZzU
	 uFFxz92rO2NFoYQIjSf0/ttLagjUBNRWwkaCzEwoSvQI4fq7uuoNHLWp/vVdaBEFSC
	 cGZF5eIKdZmsRropwQ8iT/Lu8DQXqOvmtyh5GgSS1EcfAXzmPsEG8YJ909B9UH0QUz
	 jqOCChY+crqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B450EEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168806598872.16428.7851699067049307280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02057cb75d1eeb4f742f24281ac659f4311a19bc1ac4bef6f40e1b017bf946e0
Date: Thu, 29 Jun 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688065988
