Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDD07F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659315652;
	h=To:Subject:From:Message-Id:Date;
	bh=klvSdfD67a76GtkMCC2bYhGZ2BwzV8K2uL0fXlOofaI=;
	b=eFKRY9pTMwwBSGK0GxKEz4QzCMQjiMlrnw1nMiAeyec/hgc8bPhCUcF5DRqW8esI
	YBhY8XRklFQZLSdqxgwKtDte1gdHVd0vtwwHWzOrJb38wy9nAhjrvZZ/dxqHOG9liK5
	Uq/CbMkrJ1Y19mOxDB1yVeL+02MvanXfNzZ9G6Mk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659315652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=klvSdfD67a76GtkMCC2bYhGZ2BwzV8K2uL0fXlOofaI=;
	b=bkuuj1rqqXKlWMr22mBvyDNqlC4CIorTqA2c3tqcNbgqck40ouFn6iJ23lxObgYb
	DD+WTcNwUoH2PFyvshCa3krFiKE8TEB+WfyVgEd2AN2HEhmdQ2GlBXTMLtkELEq+sW8
	Z59Pj815mVueFjgXBOPjt4DUajI1nOgpm+H2ogy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256eb879b-74be8725-7f7b-4b06-a093-2c79c9a82ce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00e57ac893637db2e8dd893f8b8f63395fea4c70b5bf364b1717cf8fb42aeca4
Date: Mon, 1 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659315652
