Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810DDED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 13:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654263839;
	h=To:Subject:From:Message-Id:Date;
	bh=PAlFBTlx2YI2Np/oLTAt2vkTxNZpdB5uyjq5eaTHcMQ=;
	b=f+5kR6pC9tBkMiIn7VF2/jqMN2sMZEAHN4M0XkX/Infctd8yHLF6d5ajLj9xLTxL
	eVYwWPkTzNjkj5VIcYeW2OCJPYqhC2Zfz+VeTEDWDQvS1YtrQ3OPi+eq8hPe1tS6Kg2
	imG6PZXBrKH9DLeKviQaSViYlCrumxrlgZ1awHto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654263839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PAlFBTlx2YI2Np/oLTAt2vkTxNZpdB5uyjq5eaTHcMQ=;
	b=hkHf2RCkfonFhMTq7+vwXSkRFsrQdkwcC53MYyn6vohz5whrM3S+sEnakMIsCHfH
	dP9fuHVZ+tlmYGl5f+9EQg9W0kqpe91oLEV5j98Pds8bFA7Dk/swV7yulhIuSwgojWN
	NxJeDJjoiPxWOmJr8vbyVP8v5v/YuO2n4UMsXBBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129cefa25-fc2deb39-e942-440f-b03b-99375f3b5275-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ca624130ea39a91a1b21ffd9dbc7f80f863946a49a1cfb798c3b167d95dd47e
Date: Fri, 3 Jun 2022 13:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654263839
