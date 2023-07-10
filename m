Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D55210C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2354C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688965628;
	bh=XNorwzjpUqeNzMmsTb+M89awNeuRTDgzD0FkNnfAheA=;
	h=To:Subject:From:Date:From;
	b=ipCi9EqU/GA+HAMCVvBFKwo7qk6aUqEoFZjcuaO2FNw/LvyvihoyXSdpYzmlbDTDS
	 uSG3HGNHEP9bQutsfJHX/6wXafnv7A/PkvvfPwB+rTaV7IfxERIHx6QZmUj0vVoudi
	 Fp2gzwJYLiK5k/yyYNsJVBWx6u5ghKZcPQBhW4zIp1wX52pIJO5seceV+aZcEaeIRn
	 nZs7FE2vcOfnhE5bgNfpNDxL/zvEHNro5JMfHCrZDkBAB/osE/y7K4JkI9gNYSZx5T
	 971MuFW5r4+veJfwKlQACJJlhOdQSmOcMBAKEwaeMHa1B6yT4cfwkCOnPgrtO5z9pn
	 InR3syrqrUG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73EFEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896562867.8302.11560769062401725532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fef1e456e077130533de05e35a82284849efc443172b5293b1097af1fb925a
Date: Mon, 10 Jul 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688965628
