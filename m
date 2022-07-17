Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003A92906
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658095012;
	h=To:Subject:From:Message-Id:Date;
	bh=ldp+YQewpDJnXWmQnND7A9RptqY1UgYyqkmz1QfrO3Y=;
	b=Hxy2L9m3hEeFtDSst7MZvyCKk7h+pOb8IDG8tfM3vW7JKb2VVRFRZG6O4fa00Fak
	yynQ9CboO1gAJIWWluuHUt5ZIrVxmECfKGchhDlVuwP96T7R1fZ0TQH/+h4rbEjYuyX
	iEsv3B4F4VM222qOskR/ly8w9m5cqYuob7JgG5fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658095012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ldp+YQewpDJnXWmQnND7A9RptqY1UgYyqkmz1QfrO3Y=;
	b=Oij5PpZ+ukt2DxFU3o5EMLehydlWcKw5DjKpDAJiX1K314sHIfWljVZFBSRNndsL
	RTL+Hr4t3C3BOG7YqrYUex3zFQjOe1S6HkoSR8/ZAHSJj7DvHjLIZML1vhOJYkN63vi
	oHzwFwtCiQ2P+a80awQsT/TXH5UBy4FbrNr1s3Nk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e2a09c7-64ac0c7b-524f-461c-86d5-f0fe7cc33c1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5483f551c04b429a077f1d7c61ff636ecbc4dda3f6a1ac344f9c26a5827b1681
Date: Sun, 17 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658095012
