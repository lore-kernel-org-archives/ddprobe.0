Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0F423AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646580984;
	h=To:Subject:From:Message-Id:Date;
	bh=rp/GPwljoztpdMEC8t7LTyyEUd7qJgam5qnVLvB75bA=;
	b=Vrf3hQMH99EHssw97ErHTYEt0SW8VThjTDV1ugduCP7bZDt3ZdMq46HT5361u6VP
	104dZ1JqJUS2NUjmJxwADZDNOYn3VfVTATA6/p3LtUYBWSTT8ThoINCPWLfXH36XAme
	FqyJeXlkIRJNwfArZDIfQvI8SUHMwAuph4l6q0y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646580984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rp/GPwljoztpdMEC8t7LTyyEUd7qJgam5qnVLvB75bA=;
	b=GRwqfClGL+Q9c1OXrF8qICGcjnpUBKjgHHuY7XPfcjByTkgMjp5fWIDWc4VWOjHd
	OiwA++LX2Rv0cDbig4WpJ0Z5ulFl5GS9KIx0FM01u48iCJR4OP/6PeCBSvlbmB64bnu
	Y//46eh64jgaOsA1QZYqssbukM4uL+SlRHmt2gl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fdfeb9c-2556214d-0275-4844-a558-2b3faaf218eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f111867923b89ed767176a51fea6ac8d1e07c517587f692ed8de27c6303a612
Date: Sun, 6 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646580984
