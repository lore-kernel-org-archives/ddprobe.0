Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B63B322F
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 23:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649200738;
	h=To:Subject:From:Message-Id:Date;
	bh=02ytoGagOM4c9XUSngsqA7K/mSEE60QY/+MzWIic9sk=;
	b=bqKo4L78JU+wS1iWmJFH4uo/Y8QZ4armNB2UC72q3ZMxjg6AJw3/jbFyRJvbzZJD
	Es4jfJ6QThWzeTYqX6WlxMsiwRbthqqT/Gc8/Krh3PwZvTtpmhdpV80gHXk61XxXMLf
	MKdnHgwjgHV9H+gE8dgfMQim7JcFWdTU4eirX85Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649200738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=02ytoGagOM4c9XUSngsqA7K/mSEE60QY/+MzWIic9sk=;
	b=RjEY41i8WPZwvNcz04yOzCKK/XLTN8M2EXSlNMPCz3XFKvI/ExU4ygewY8GRmm2N
	EevWi82xdtZsol6l/02BiSoNbRXS924K/fedCTrmtT16e3e0QGOmUHVydwKqtJSTMmI
	0UD7/pmWFhAHfn+5nnRm7Tyez/fr6CXF31kz/qEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc062fd7-930e1072-0848-4d30-b44e-9d3b6e73390d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c86928820eac3463cc59c882c88e2e63856031cb33524e6e3efe4b2b24b833b
Date: Tue, 5 Apr 2022 23:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649200738
