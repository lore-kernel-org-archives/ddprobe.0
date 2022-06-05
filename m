Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FAE14681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 08:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654416180;
	h=To:Subject:From:Message-Id:Date;
	bh=Uil5OgdK428cQyJ52PsR7WpyEphz3fzzzOHqffXXWJI=;
	b=ij7JKGrLquXd7JlmRGujzjIAU43iTKRJmQLFA5Qed5niFsJ2A75Ld6RkHyPjlpes
	ZAit1FADPJma+5nMT54fXMkqRpuNmRQVe9buCei7FRHpWI033S9WXgsGEGxf1TeyM4R
	ecD5FrXDzXE7ZQPU1uGybMLRYmZPcY2qlZlZcF+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654416180;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uil5OgdK428cQyJ52PsR7WpyEphz3fzzzOHqffXXWJI=;
	b=C03K+a+LfXTcUcaKRUoHSAv9E0cHraE8MG/jyNme+WBoMWCgCf+ZFuCIj5Ydivsg
	avYef+A41+tl3e7Yzx+qJv5nBbT3Q+AEJbzUwNeALCzICQoxA46vBOuARtEGvuXaMz1
	FLde/gUomabVWJGtYs09nL9ttK6jZJjWKf5DFjFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132e38082-8bf9c661-ced4-4adf-a7b9-e00219fb84ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12a343eded90897bec747ca57ebd7f403d7fad7d3be075355947771bbbf0fc17
Date: Sun, 5 Jun 2022 08:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654416179
