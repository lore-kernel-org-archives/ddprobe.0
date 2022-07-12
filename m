Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8C14681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657657012;
	h=To:Subject:From:Message-Id:Date;
	bh=XBO/MAbqXE3QUGGpNWQXlxJMU6a3baA66vyh8iFPPNE=;
	b=JJidjrp+sUAX9OMUg3sdfLTN9PAEiC4YbQTNVWOL+pciFM7tmuovW6Vjc2yYIcpX
	r3Va+58hd6u79WFLpkQpEqqR0BRXRlOnPC5V/047zwHZ2xJU1YvMN1g5B16Koizvavv
	KCtqGOCYlHd5KvCCX8uEmmgdeFUyy5GjRRImkzTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657657012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XBO/MAbqXE3QUGGpNWQXlxJMU6a3baA66vyh8iFPPNE=;
	b=aU0zyVOSfdikmSlc6Z0Z0aRipTYyF8WSnq7ve8eYekHeMLRKVyISt35Ch4Hm2eau
	a97H7ESv02H4RFtmIMNHEDSS/w4TDcn8O2teTvZm58zB9QarYY4Trq12CbvNJjVTOL0
	5FAtCiyupG7nrZThw8VoWc9h8ihrT3b5ic9tcjdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f40eb08f-a28f53fd-d425-47d5-98e5-cb3d4abdfb5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80c526a6bd544d5c1c5d093d2ed679e695463b5bfa735683c2b5fded42070cd4
Date: Tue, 12 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657657012
