Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876CC7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645916484;
	h=To:Subject:From:Message-Id:Date;
	bh=dKFqAV05iafiGMLe3Ka51IYVgEwROxMc3T/v7/51Su8=;
	b=Bm1gKlgyQX5MYJjbNChIxwuZxQ+x7F405DXbp0D8mMPgaxUdPnmqdQp4XnFCv6PO
	OYyIoDYUO/uglLEuOnncz7fwx8oxBOheFZRFPV5fxvYQS8HqoRpKN/2vetpiuL2KbaB
	Koklyj2H1AR5G+SotJMIrS6qy1sidQXWOc5DeW4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645916484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKFqAV05iafiGMLe3Ka51IYVgEwROxMc3T/v7/51Su8=;
	b=JrJQ5FQ6+d6aMqeVHts5Nyuajlp2mYP5+EkNXkCR8JFl9e4d+cB7xCicFH+21u8T
	M9avHQHEPRDPquMyyt1hgaeDUcus9wVXnN6E1D70LVTtEdrgXkB0PreURgMVjOpBNfh
	DIQeNlh1UlJGeahUGoruRLmyvQqCs6UiphiabdFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f384474bb-f9d9f61c-ce99-4d7a-a5aa-646b8d225bc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f864169abe03a02e76922485245dbd99f07d769f086ec03bfade899cc07e564e
Date: Sat, 26 Feb 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645916484
