Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F212F1FBE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C80C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672358487;
	bh=jrt3Bha+on/fMeb5YFfXpWRNXndiriumVDKzrndakrg=;
	h=To:Subject:From:Date:From;
	b=S+uZBTZovPuHGxKz0QiBW4n1sjUymNNP859hn0eZa7ewvg0v0YcAjHe/DOBJyAh82
	 e9dhkN0PR0sB0ANPX5UsPBOcNzGulkHndfU0wfJOKelj5bmSvL0js5jKOWlM6QSQQm
	 dCxwlx1Nfh42Jp5lWH23dGBdUuX814Ilg/MCmZMgjkBdQGMLyLNH37gEAY4MptNiFf
	 lKcvMIggTRkBa41q8refpRlfibyu57tDM7kVrFjBP5V1SBlgqeh+x0P7qtYUKSxtfz
	 sHwAqeTWw73bHy+4NzYcEngfMgKh8GbvG5qYTG3N+WR2A4i5IhTLJVMG3VrbLsRc8t
	 EyaOoQ5qKI30w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6F8C3DA79
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235848743.15524.2272261674067683585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5da16f7a6c2ea2e2ea19c6f8723935e688f4b00839ac838e51c31739e87657
Date: Fri, 30 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672358487
