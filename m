Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58827E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C34C433B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669078254;
	bh=qmFC19j0pfRvu6V7+H3wHPQCuzlZY7FV4ttCVtoKTDY=;
	h=To:Subject:From:Date:From;
	b=Axn19WOgodxnyM3u9PQJoqDr/cenrSOUtNRQ1vIb247LtPkabw4NdMUPZvW+71jnS
	 u1Z6J0uLUiwr3IqZS/9hKylvDj4Ad2ZHxSfL7gjUmtVBYk103dxClGnrW/Z7W1aALR
	 JNFoWObtxbDKslq9GI7VRspMNf+znWs53YZwAk3A2gt8DjHjtHJpoQ5iMilgQCOyfr
	 J0cDDK6IUqyvCGU4RTcGMxYHwJt3SN/IoWr1hqwJC8g68fTzAIVcgkVxlqlqkex41z
	 K5YZ0nyfg6mGxGIlfCiuOZTKs61cKzsl43d3QJtKEMffXT39WLVdT5bpVBj1QpVNdR
	 1gGNcO2yFUotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50981C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907825432.13740.5422998763817247731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e77623ae52f21168d8ef38f6145b6238d653b848c4c5902757a07f63cd420b
Date: Tue, 22 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669078254
