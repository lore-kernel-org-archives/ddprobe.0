Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475BC257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656449812;
	h=To:Subject:From:Message-Id:Date;
	bh=3Q/ECI4CbEctkdhHx+bGkIEgkqDVcvF/t7rPdIr/1TY=;
	b=RFusO5i/cJo6a9CotL54OEr+nNzC6oiIxuKZDRu+rwWIsYIEziMUSyQP8Lra0syj
	sxC2oPiCb3JUlFDXXrhZh6vK1FwJ/dd5q4uExS3OSNgD0Nj1axs4s5z6gjEEPt50x5O
	3ug64moz0+nBN3r7zq/IyIuwWWqUmK5WJTYD9Of0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656449812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Q/ECI4CbEctkdhHx+bGkIEgkqDVcvF/t7rPdIr/1TY=;
	b=OE0CnUMn1LSQChvunZHRm4rsmhz5GDSA9T04TmnZ4YcM9PHviLh2rk3EaKdwERiH
	/NBoYZlFU4xhkHMQTdOiDREWtmhiC0j8t+06lVnWrZ4Ku9wCD8TaOZ5EDgy3Bjz5hJZ
	gzpJL1DF4y2vEaKt1JeIInArvXctkfaNI29J9Mjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac1a478b-939903bf-516b-4cf5-a966-8c5897a1b0e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c191b0b687a18aa3631d7825e9f021831a130a8a5dcf862eb02a02d47c85a09
Date: Tue, 28 Jun 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656449812
