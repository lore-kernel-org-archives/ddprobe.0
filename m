Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07062F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0A6C433D7
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669590654;
	bh=h0Wk4ttjUtqahQAknRHqVARCtP9VWOej0XqX15F+kdc=;
	h=To:Subject:From:Date:From;
	b=Hhcz0wgh/04GUAvG/DGFdIwkmfz+y9eCgvjR1eWicbtQPcXIuhoTCseGkoE6lGgid
	 RuSaoOySMlu/CvKe50aPLczPQMhNcSGZ2+19IWr3VofC4LAX/Q9Wdl30XIt6xb6jJy
	 IW3uxh5ovkU0eGexkO1a5qN7FeOy/OzcYjARHlvoPhTa3PhQXi2vPfawl08Odmzqra
	 O3EXxe5nGXcBw98TlKt33oiNZwJgLYc6s2tB2JEZP1ctyol2iWPbPAMr1uO0QbgH/4
	 SFeS5dsDVjBJPeTvgPqqDe/eha01gj8PrMijJSj66kBn1mwKmXJ2MsZQ3PtqhaJ/jG
	 TmpatSUWtA4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529F3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959065433.14262.16605648106845130875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fc2d3f1125697d09499c6021be5a2bed39b8c92d0386f4acf1c47a06c4018b
Date: Sun, 27 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669590654
