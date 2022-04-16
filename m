Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021A02567
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 14:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650119038;
	h=To:Subject:From:Message-Id:Date;
	bh=navDTcBbWoEJk7xRL8EE++X5zd7irEhgYbroYZtMUNY=;
	b=FdywdKPEh6oZPI/9/8DB7nEKECivJVCtcyEKKnbbZZ6wVgLFj54v2RFLo1oKMFCU
	f7lL5uI+j0c2xwJOjSyVXWShNSR8Jn/2ifgRDmLL1xfRuvWSkcHdlfUxsUfIT7Nkrs+
	xAzDTAm+MdH7edcYM2aXAipFzQhV/tL+UJ5ECBDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650119038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=navDTcBbWoEJk7xRL8EE++X5zd7irEhgYbroYZtMUNY=;
	b=LiizvWNHYyu5fFSNzs+g0S3ZWP5KsOeVf9XZH6wQOGBTilVxo3/9iJou0uZukhXF
	tGzAqNTrHWyYf+enSCUKs1w0D+UHFTZUNknKhS+hjk9SoO9QpGv8Eb1krd3wZgzCnHL
	yMLMSu24wQUY5ZyUMt9BQBxj/65YaG2LPTWImQJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032c25568-0c78febd-06d9-4898-8633-ff338d8bf120-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4905e16f75885e5d0e309ca931f0eaaf1468c4bd0a9723c4cb181afc8ba48574
Date: Sat, 16 Apr 2022 14:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650119038
