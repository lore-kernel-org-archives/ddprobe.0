Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F627C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AB7C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662603653;
	bh=mbA3uybvSIBS8VSywI3v6cxP+PiSD3cj5RCh5qTJT7E=;
	h=To:Subject:From:Date:From;
	b=kQTuGXbn+IjtAh9bBwQNKS/TOo6JKQmq3QXQWQZyYbK3n+A/YaEEJGN7ncc72agJQ
	 D36px3jVu70x31WXOEXGAdGOFeSzj0EM+qNOvRhfbze9m/ORXSbVH3PNFnm0MsFm9q
	 XarSb/67jWjpgM0aASKqdMHJ5QDCg3RScAO1TCXXl1H1vqf9dRddiHDvO1wIWyIDhq
	 AtcU+N9uFpzUrd7vf3WszWU///+O5PzSzr2JGCTe3GpazCsGCLuX2SGSMn8zos2c9R
	 s+X28NNWeKI1xBQCs7PGJlWnWr1s0kfpj9bKTNNb9B2KAM3xh31uL51yK/W/0ne3Q8
	 b9yVx6kaD/voQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E4EC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260365335.16474.2722139158111772888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1982389bdd6589c48234a6cd0d9ab0d7cdd00c8c0f4d4d695f36c4e33f65e77
Date: Thu, 08 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662603653
