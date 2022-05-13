Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D3033D7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652451659;
	h=To:Subject:From:Message-Id:Date;
	bh=mEpa38ZxxbKXOe8fmCAZKLjFgks2LYNJgMFX+pqPRJY=;
	b=RsisDlAtwDlHnCdWDm5hInCIEGQVTs9+T3llsEJNM5R2s/WwLwD0om/c00UPvpf9
	7/qo3wwiaot181rEA47ekbHhSqfCYrmODjcJTy/Pm2iN+G3KBfXg27VX8qCNFho1FvM
	FZFRvl6QdLm5G2ChZ3oWDklzRLJFaoIBS7dsrTgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652451659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mEpa38ZxxbKXOe8fmCAZKLjFgks2LYNJgMFX+pqPRJY=;
	b=ih5105PmUNMLQkE1G9WX2GKV4U9daQbhyqdsuLAtAsit1ITKImPbBu2DoY1d95Ex
	WEtmEzNKL7LJRIu4i5r45LhcgzduCr5tq4VKSPnl2ZeXaI4PsR/uQzOkgWEepNK5s79
	C5TIyhlNQ2WxBzJNkmlaYs4cNHkx0HB0wdQ7Mfw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bdcb4ddb-373d5cba-bba3-48bd-9508-2dce428efc85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b41cc38252672edd72b3cb6280a974821d72c4d3c469c2a9df16ee0da1220483
Date: Fri, 13 May 2022 14:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652451659
