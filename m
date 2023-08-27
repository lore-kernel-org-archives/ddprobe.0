Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6DE13AC2
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 19:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2976C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693166048;
	bh=bdkFlQVeAmMlxcznv4jIxoiqb2XiIn5nXkaOZdtFOvA=;
	h=To:Subject:From:Date:From;
	b=N5RfuDhkU0ji/EEGK8GZK43JHMw35JsOuVBARsDo9JEcKgmZtz14EULmAtMfqewMT
	 whCs8D5sqhoFTYbtfm0yjJLPNtwBpiFmpn/UFXkCZdlcXCW5SZUi42OhZtcY60g3oK
	 fBsrxtMENHrN7DskNCUJRFqB2OhnajBA9XHnaOImQEHt7azSU/YiiObOnrcUYaU1Od
	 SlN96NFOBJrmaqOJvhl2y024fcP1o6ba7JDwX7tzlQfq6wGE8WiIESaslwNRVO9vWL
	 PFt1R1OxIWG0rPt7UznJ3bWt0Wmt1FjjlsHEV0dXdt38qyYUHo8e9EKsaeJGzx22uT
	 DkZcdQBtfj7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2336C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316604869.29093.7196133828738640325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82a64a7a4799ed7621fa83d62e78c3948b6d3f8e6819308ffd25f93be7a18f9
Date: Sun, 27 Aug 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693166048
