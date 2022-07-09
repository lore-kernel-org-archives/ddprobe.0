Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162764C85
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657409812;
	h=To:Subject:From:Message-Id:Date;
	bh=545u23hWRMuq0CozlhTEkP3UTTYw4A7VIfzY1lyDyMo=;
	b=IVYRPm6UQ/5eNNropwd05DgABbcaAj4ChZ61eRygmrRyK4Bif0ebSB9gyjp3dwVc
	QgcT96crWTBvVQHmJilRIdQEbrGiRZfQl7CPlSM7GmH2kKpL27sQMGNdqocH4DrNDkV
	Ru+9H4sKxd6HYfAIso32wjAPqkUADzwgbwInSmss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657409812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=545u23hWRMuq0CozlhTEkP3UTTYw4A7VIfzY1lyDyMo=;
	b=HevdNPnUlOO5Zg/EtzRnd0Vsmz/m1vo4znS8VYs3WIa2DvMYAxYeAyjg4PqSJHaC
	ig+N/iDrsnQjXmbFRzrWlcLacnv9GG/39jEIgdIv+gY25/6BFDqi35mixfqmCsd8lsV
	D5Y16eBw0jbUVuDOSg9f2hCsLEwmxDLCZkuq1jEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e552b7d3-96aa3513-ddea-49d5-975c-500cf485e4b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c2edce3e50f88e48204c8f2b2244c7ca774fa74cec8c99d8015fa045d0d1f6a
Date: Sat, 9 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657409812
