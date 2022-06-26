Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE0198
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656227212;
	h=To:Subject:From:Message-Id:Date;
	bh=bUsGDMZienQEHWyzHkeE4PiN28/pMPSI0XIxC8qCtBY=;
	b=fEVmkS3Vx7Fml6Rg6gjYJ4RcJuPAISXmqLE00cNHoKX6YIswKtHxst9DW4SNiGXf
	ITo4DiwDaZrZ1M6TuBY5wjrSTz3ENvFZOUeuFoW8eMQpXghbJtoqTnE1ryhP6/2W/3C
	tdyN7uA7YlrAC9an+27AqQhm8/JOEF1qoaSU0w0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656227212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bUsGDMZienQEHWyzHkeE4PiN28/pMPSI0XIxC8qCtBY=;
	b=WqM4/4aSZwXnM9J8vaUlmQQbVn42FvZFtfvrbD2zV2g6ZYZKHu8hRT3H6bXDVHLM
	WYeFpgFD9zbvY31kNNvAXGlatT+lZGXnPPdPK/96x7F6WnKen4xgbj7Ze1kRknikm6E
	fy5yfZsIDXYN1jIta6MEA6by3HcfhXkErEk6uAPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ed5ac23-d3a4870d-9c4c-4327-97ac-2ca66bfc52c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec10e8d1a7582f197d1caf97ef174618e5ef05ef36569a6fcce38f030dbd675d
Date: Sun, 26 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656227212
