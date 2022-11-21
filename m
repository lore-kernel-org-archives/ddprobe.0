Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC1A79C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B93C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669057254;
	bh=Gd2hYt6A4clPwGLsrrxG8gn9TpOWKySz2pJV3Vf1CFY=;
	h=To:Subject:From:Date:From;
	b=CNlAW4J47ALK9x4tm4VQvTk1Db1FzE5uYTr4ax+3Wt4Af+0kHTCAnbuNU1Y10oAf3
	 08h26J2nr9QEL5tM9/CYgWukQon3zE0Zo+s3QavWxoH8Q8YnP4I7ZxrQNXq52nP6n8
	 viQk5S6C99U4NiRLeEviVPA4yX5tGZKQCBh09Qtk5+yyAik03azX3br11T9QuKeGNU
	 jBTUJHc71O3o8DgTK6YKaVJESWnuSIvrMf/+2nTDJNkdIoZ4xj/69vGTpnXblu3yXb
	 +cFg70LwUeMM2clZBsVucKKVr9HtkMPwLVDSKElsZpZbR6B6gzffs1paEPs/OKFPio
	 KV64pp9IFjbng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5678AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905725434.19551.9132498702849776163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851f381c8fa82236c577a8e684388aff4109cebd1d5ffa4a24739980563fc922
Date: Mon, 21 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669057254
