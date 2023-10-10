Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863677F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1Gce1m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B94C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696904828;
	bh=/a+AT/1rBJS5kQRNa44alpcyXXbtZ4TsGZc5BG+sb4Y=;
	h=To:Subject:From:Date:From;
	b=X1Gce1m9XD285lywhSY/tDloM+X+ecLqoMVEmk3wc1nIa0YYkDRHjYvPFqFGXJORX
	 /tsFTfTbLhCehbnU3qzQa6AR6WQBdCZOv8/IbXPGZj1yD2/MLHAaoVkOGzpMfIQOfN
	 nNHhwmYotEBEzIY4oCK8DlZH4LJGrd4jdZIcR28KthxtGra3Atu/iTSDFKatYIPPu2
	 3Ary8t7BWW4q7mhoqmPT7ggMqNdv4u+4oypxxF9me4elH75TrwDGmYlg0Dmp+b5j5m
	 v/viLPY1pRGx290XymXlIpZOo//Ii9ItcQNiPjXwik5T/9FCzG3n9dTYeM/qiR7Noj
	 0Mw2yAd/XyoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57D0CD68E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690482878.23750.7248160860466896336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b989145db73e3aa1c8aba4af3fbcf469ce16c768a143db15b0fe276c9c3dd479
Date: Tue, 10 Oct 2023 02:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696904828
