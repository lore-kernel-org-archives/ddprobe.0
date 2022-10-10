Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35C61FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7244CC433D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665375053;
	bh=ad9beSkRqXaiSQ/tCHnRtMRRolwBjxYrrTvdqAMoZQ0=;
	h=To:Subject:From:Date:From;
	b=NTA625g2ycI8hfTQYa90UOM01G2+K3/WHREyDFi2/TUdjtyd36yWdhj9FiMw1epLn
	 3KfJ3TizJTfENPsAUuX69g0fSWqvgpusHIQ8UzeJuqb8ldIQxzCvDQcPpwnzyBBkZv
	 vKjgwDEByn9QhGD+w60GHzNWipFSn97Nos2/B0mP8BHfR7YFnqzdeVwTkIdP1kQelG
	 BLoAfpqIUSqRcFO+C6wPDGm3+ewQSp7Fq3/MWJxP7LCGiRT5uy/2ZKHuvphsqvYKEZ
	 ORFWkvO1g/YYWaV7dT/cb0KzB7M9oX+HMB1Y7ZBKJ+UFZqpAiisDVqeS+fXf+/CkJN
	 KAntUi5cognAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561F3C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537505334.17056.3299672841948656854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d84a3a4a25807718b15f89f7c7e5633fa6acf60cf07f7f9c7bb975a6d67122
Date: Mon, 10 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665375053
