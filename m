Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ABAA15DA
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660141853;
	h=To:Subject:From:Message-Id:Date;
	bh=maUvYMHwu95HdfKl8DGktA/sFMknhm6BdsMyK+OstCE=;
	b=NxvuXw+FpQr1r8X+SOag3Y7RvFoXOTCMQPg2x58jD5qfJiFT8zHfckQeWONK4qFM
	K3RDxm62OdDqIcbiOIqxsLttMryASqs5CH+/QA2WQDMdce/XCLHylJmXkvLNS0hmRNw
	pwvZfJlI8dLoIRjdNOQ0+p33O5+/o4gC/QJ/e2fA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660141853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=maUvYMHwu95HdfKl8DGktA/sFMknhm6BdsMyK+OstCE=;
	b=aMJkr1JYGnKpAaliAALZb5XTrbcm0k6mGMyoY10sES3Yf5eWX3X0e5Hlp2c+KOOT
	tQDQuZ+Alzipf3CjGlxTacPuzOsBgGhurUtqksga4PzH3q1zAWGBY2Ten/MWRiwDS3U
	eVPENdxxVbwJ1NMfEusuqyKEA0C0NVio4EH7QA24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182882a57d2-9b6d37b8-a834-4669-9943-ce6a91b403f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adf7596a7539eea355044afa3d83adac3be93cb854c3bc239e12ec4f5c914542
Date: Wed, 10 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660141852
