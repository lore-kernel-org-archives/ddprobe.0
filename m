Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F95D46AF
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660080052;
	h=To:Subject:From:Message-Id:Date;
	bh=5ah8fveA2iLefTXS+5T9jvSqhD0kn9dXsY2Gg6Fvx4c=;
	b=lMghi1iOOBMwJpsTmrXlIEijQyji25pMvz6JlWFciIwHmt+b4pPY6It2tkOX7L72
	rveMxlvAEoIA8rSvc140FCsNRtcm2nscH+urEQvlKnxGzSesQNRQJSAm/JbQQ06qJHb
	JO+5skhOA6ZYRphsSrXl6zj3OnH1OBW2K6XfxJ9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660080052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ah8fveA2iLefTXS+5T9jvSqhD0kn9dXsY2Gg6Fvx4c=;
	b=BtHEkUZSmmDrXNSJ8+cC8BdfdBYvFtmoSBrdRg/nh5nbSsYb06ZbGYdOnIxtvzub
	SJtkc8Mbih0PhKX8xbmpOPC+axxNnqdjcnPRWq8xFWW+zeiP5pDf74kbIKZcI7Th4Cl
	ViKAfKUJYpYlw9pzC9Ol5oMsaytQPqfcyb0pkTGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182847b5967-e4dbaea8-3b9c-41da-b3b3-3ebd105e6b96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00ae385c2d48deb2cd4ca56de87a1150c38d55c52724d6ebf9fce2ee06205b81
Date: Tue, 9 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660080052
