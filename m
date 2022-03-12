Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999FD36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647048084;
	h=To:Subject:From:Message-Id:Date;
	bh=YKIXFDKogtTckA8SWFzKaJ2NoKUi8vi5USxdJORIwng=;
	b=FJbUDdJ3xJobDUBhZA4e2GA46NPw6J5FPICHbT5pWlIpwdbnZyb04iYKOv90oVES
	SFrT+ZDXB9lFixSoyeM5XRyuuoCLWpHtXqLuGthDHqqbgmJmUBHso0hFfCBhvf8aCvm
	TQ3GnwEd5mUhdf9FPCDpoE0pVF7EaWveREtjzPCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647048084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKIXFDKogtTckA8SWFzKaJ2NoKUi8vi5USxdJORIwng=;
	b=RBJuudbv2Ba2yVtHhojWgIVQ8xAgnIR0yh8iNcn40R0ID0TB5TFLczSIlsqGSa8O
	HMuqAWRFloqlJ+pLtgH6Lrh1nBqoo9/qJhw9poGYNMnzVHZSg4LVGAIAVA1QleV65BS
	aLCiGfGxl7nmdiTjP+2gPUMcKrsQWeP4jwopyaZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7bb74d4f-c5708b95-e364-403b-94fd-86cf40bb0aab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 567977a40f620a5f3ec7b707bd60064ed2e1afe4353a4d078ac6c92be6bd8b05
Date: Sat, 12 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647048084
