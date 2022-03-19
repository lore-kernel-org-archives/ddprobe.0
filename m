Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF654C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647676584;
	h=To:Subject:From:Message-Id:Date;
	bh=64Oy5l+R8HpcCO+YvIc65YCUbV4mlqDntmZmiQ2uPFg=;
	b=BG/UngpL7WLqJv/xmVnq4TBHOZgR0T6KTVyi3iwZzSFNL/8m2OTdLLsUHPNbqfd+
	uk40OJRXMLPOZ3219yY6P6ZsV4y1Swfz4bXMX+zA+q+M7Ub23ADpmiAnKrrWVjsCNv7
	MCKaXWgk69/6hQuq93LRLpmalsDtsavItuB9e0BE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647676584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=64Oy5l+R8HpcCO+YvIc65YCUbV4mlqDntmZmiQ2uPFg=;
	b=YZrGl0fATBnodUqQ3Rj613NzMGdr3L9Wqcstze0aPFtCt6TxP1wg4IX85cPtyqDr
	QgB5KrsEei0YWdRp0LimFUu8HM7YhBO+Z8NyHhDvK4RwmKG1qbsYhR2b99Dzh4hiRAs
	mYOHCZwzovcR/8fgamAxgmUhmHTLK4pPDGXlXDL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa12d7360-d6f71b11-cb48-4d6f-8d98-982688da19ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65607a02c4e795c0cc1e371b830e69cc839b90179290a682c9e0ee6cfd6e07f
Date: Sat, 19 Mar 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647676584
