Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2664017C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657768612;
	h=To:Subject:From:Message-Id:Date;
	bh=6g6+HJzqBDwEXpUmougSlh4VUh4gaFOcZyOUsLN/I5M=;
	b=A8cU1HmePpi1nMuzEvwusQacZSfOuszlR+ggtqYj5dWPLVsB8hVBZDyJBfW2hQOL
	GquzJQCK7oQFyMpa2TD1D7tMVL4moiGOXcoAwFlVyKXtV6XnD0c8J5eeKzwWD2EOdVP
	khpF+2vMy1N5ixCpNSAB1QodWeDCByENsuC2Pro4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657768612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6g6+HJzqBDwEXpUmougSlh4VUh4gaFOcZyOUsLN/I5M=;
	b=YVF/K9RXTX0oDckwpCQpkR7lxMQB3sTgUV1d2RxKyJ58Ij/eebG/7yi90uhrAm4u
	iVmstdgNWQedZFXzkNYZkLg1kYP1/YHXXVBhtv7sat8gcfkDgNlTwz/S1Tce2T4VXw5
	VjPVOxDrhC1IFXd9NJ3QMzoi2KvMutT3e3dGkEK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fab591db-634c5049-e11a-4263-be17-c0a5c7033f13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd80a56eed38a8784280d1bb4254db5c538c361e51f4d0cd9021387435bdd88
Date: Thu, 14 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657768612
