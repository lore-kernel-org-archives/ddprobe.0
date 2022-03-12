Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A473620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647066084;
	h=To:Subject:From:Message-Id:Date;
	bh=3wxIFISHCZlr6hChTMr/7CvhMI2yveBzptS55JIuk1w=;
	b=h4fpz0VxP0QfyXxOM7KixOSiYelUeKyb5z/Ka7gTJDXNCs52fX/qmzXbvlvgi68N
	+maBVWHCuLIVeqhSm5v+5OquuC6hne7XYSkKnqkEyzxQehVZlQTME3vMstrw2r5S/Um
	p8QVY7CMVQCdHDJ4BneYIhziAxgUFe1OA/0hTacY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647066084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3wxIFISHCZlr6hChTMr/7CvhMI2yveBzptS55JIuk1w=;
	b=NZxkhCAqWhp4czf3JmUHk9/h7+v2cP5fASTlj9rCIsT3bAcLB7bSlTP8QIq1RW+a
	Kn6mVC3DrYWbBQa5ZtKXJ+a3i4zhPJaZEsF+31c252nN9fsRiqhcCg/70z+2bFieq/l
	3M0K4rwfipUWiI1f8KZvRORZy80ZsH6Mc9OXWhZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cc9f5be-130ca85d-e424-4f66-ba17-ab01598bd7a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b218108b9a57a4fe7708ee4f1deb8fc21bb0e17d56a1d1b90519633fcf0f0811
Date: Sat, 12 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647066084
