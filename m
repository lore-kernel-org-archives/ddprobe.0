Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F51D7FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659665452;
	h=To:Subject:From:Message-Id:Date;
	bh=n3E19AKA+l2zHHMep5c2KEItmVY0jKOqn1ajmE877AE=;
	b=iUzuzf1bKwkob/M3bGSRy5qOB8PciQ3C9XdSiHjoeaL2BWa82/FZ2s4Dg5arwUp4
	g21RCkR5ieddSXR4HuNKMZxDhKIZQ7tDyDPawnedgHCOFyPMDrFsjJ5UBJb9he7HZcz
	ZViDTjHhp7ITZcQsn88PZayaOkPTf4TFmClCiZCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659665452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n3E19AKA+l2zHHMep5c2KEItmVY0jKOqn1ajmE877AE=;
	b=iIBo8Bqri2OdUGaXnirj5+T3tL9IjTGlc/s3zNs1Vg2FMmAI+PhNMQSbOgoy6mfD
	cx7sA/qXe5J+peWOo2B/lLOw4VkhsRPqY5Zt1GkIE7JKDIS0QYg/msQM+gnqwa/x+5p
	eD1D329CByIBpBYJ/Z6j+3fNp5luUQWJZTpRWV0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826bc50e0b-9c00f925-261c-4902-9976-35c08cf0266b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4b53366fd8b5f4f67606d8548c8b270f51de6533ad6b5d2ea6617c0171427ba
Date: Fri, 5 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659665452
