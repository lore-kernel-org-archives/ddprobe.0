Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7C1186F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661361052;
	h=To:Subject:From:Message-Id:Date;
	bh=/wPGgFMJIhmwibL6qTKElsPIgy5dgXlU5lK5bTDrQqA=;
	b=EoFUQxrgtpWv2E9GNs7WEnE7hp55E9JNtl+6vGDz3FHhavxn1b4e3VaK1cDYPuWb
	pWbDklmBMBq3ZNx7JNjW0lge8ELPUFunuIYDz+iwB8Xju0vwvGY0+RegDFeG8A1+ScC
	NNRUIW2iMf8ys2+gZojKYCMeztvxz+aCVWj2pAYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661361052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/wPGgFMJIhmwibL6qTKElsPIgy5dgXlU5lK5bTDrQqA=;
	b=cFcuwYiID54tkllbcJLAIztKGx5MJcR9kIO+52boHjizHWYD1Zz19U4lqSIMUQS5
	aJ34VUl2t4W88yhZDz8cdFVqUFV0VUQf/T0Gjrl4EtktVgkT9TG1a/tgTh5ZrOlctyb
	9pf1rMZPcR4bgrSzIhckR4NvH83D3fTGoxjH3Jks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0d5dbac-fd4e5d27-460d-4ece-aafb-d4d63c9eb968-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68ab49ac7bfe0b245835a03f8c45f5f1d85d156d36c5ecc16b684582db13247e
Date: Wed, 24 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661361052
