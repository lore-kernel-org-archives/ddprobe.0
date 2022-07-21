Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9864690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658426812;
	h=To:Subject:From:Message-Id:Date;
	bh=jFYRZsvM6iRdtquaI3joUhjZDXesti+zlWKNUWWLAME=;
	b=PTWzJC73E9cXUlD25ILqySx3N9k+JxX1Jwmwd1wjRmJ+NhEUxqv+AUjm1PcEE/ix
	loZT5C/IQUMLoRCILUbDRRbXvwviHOx0/pnBOsAh4fZhmMxO4n45PsYE6AmGFZNw9P3
	vXe18jTAPMSvnNhLC8m3AstNd0HkLOhL4jq+6DtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658426812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jFYRZsvM6iRdtquaI3joUhjZDXesti+zlWKNUWWLAME=;
	b=eB81EWrnZVAVMAd1ldzG9QJwOF4hQMvbiLHVFLYpDlR6C9/or7pdehqQGY2FRQgn
	8/Hat3saPE7rn+ZiKQovPBBfd3pH7mdLMf77zMFmfEw2d5rV8BGeuom5Ew3cs6HEZxc
	pbWW0ZmY6f8d8KkgRK0R9xn9Lw3XP9DAiqs+ene0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221f0e7e0-489eb719-73dd-4d03-945c-14bb71296f1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb2431472b61986842c95897db3cee9c4af272fbdacb62166e521c38ad9b656f
Date: Thu, 21 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658426812
