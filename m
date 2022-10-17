Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74AF2562
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74695C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666032053;
	bh=6fdEtBUnv98qvAQzh62ZygIHy0X5zN/ee+0NYV/ORqs=;
	h=To:Subject:From:Date:From;
	b=SJquTk2b9bo2qiBbb6pla7AoaCZ5FGC9WGFc7UDzXIipBPP1iCw57eFBrlGrRtt4i
	 nTZkG6/syyhmb4fdTtdeGBc6wipyNs2XYC6VM0474Q/zlQpgEVwQypAKaR+RgeBA+5
	 /mJvHlH7zfMNue/jlDQUTYjgiOS1tc3yPycqR6UQXMyoDVLLErf1NPzG5hknUImVsF
	 Fs18sca4/43GpnhkjCJJ/DIBFEtED0/WEqlEaPiOXSygRLlm3QgIXTJVPpPdBbUCDS
	 Cgs61EOYwzd2mS0I6i3HEtlfEdI4jdlxnzW5kwY8S0jbV2rzrTmlJI2CN40s9AXxp1
	 WYlh3ePDdAy1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AB2C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603205334.14781.1305012840145668663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6e4c4ba5e6ca6c0bb19abd9cceef23cf13a70667a6ffd7ab21896db59e6b49
Date: Mon, 17 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666032053
