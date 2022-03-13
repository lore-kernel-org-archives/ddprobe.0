Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BC480E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647152784;
	h=To:Subject:From:Message-Id:Date;
	bh=NY8GZf4IXRMUCU8vma06zzEt1VsNyfdOB9YzPFiRmhQ=;
	b=hPmV39RhGObUkpC0fHuXrmDMemZb3WdBNw+aacRAZZBaNfT47BQOZ3XqOKwlEXN8
	SYdD0eY2W7VY5T1NNi2f8jTXfrHINU7JEPn6UfISZ5NifIJ96a6pmRnU/hY9jnjsWBT
	eJt8fTRUYXWeBg3kZ7fybQMw32gb9xgwtpqLgIWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647152784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NY8GZf4IXRMUCU8vma06zzEt1VsNyfdOB9YzPFiRmhQ=;
	b=h3BN5qZozrJVX22VjpdIM6bR9GTgnlMyyN4Oobm+xJ33nbw1x9n/r187VFrF8MaK
	2xSuvvkoig/7BNhwRoe7rf9PFQKmDB2CVNh2AlawMdVXgMsv8w3+4Yos2wwep0ee9ki
	DlFZJZzx/vhyv4Um4Bb2r5iVw7vUYLSsvZbIyCqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81f4e5a2-d5e9ee40-fbb0-4004-a3f1-7640fadd85c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f616a9f36fc2df3c9d6cb4bf21663726600a961858a5af5d7ffc02df1c55c2e
Date: Sun, 13 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647152784
