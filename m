Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173447E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 10:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648377478;
	h=To:Subject:From:Message-Id:Date;
	bh=XAPIw1TMDQhnn0U5aFT9wdkRfd5xzJ0pBJ2Xl148iVY=;
	b=mEmz7wJxQg1iadwGABwGTm83K4mn3ougJDsz0aruPFI8WISWnvVlR9x1RT0Z5EMb
	1bN5xMwDRGGYz2hXtoh5w0WSf38H+sTsESG8cGC9Nh5cbGwq+2st9qxJVWGiavNUTSv
	/CFodQba8ha+kV74DsM10Ym+yBhzG9j6uDnnwB4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648377478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XAPIw1TMDQhnn0U5aFT9wdkRfd5xzJ0pBJ2Xl148iVY=;
	b=CjBnj3GNmaw8bWiwe69S6sXp67W1HOl1jrw3BcEil/hI+vlBbBUc5tKvDEmn0d4X
	ph4SluJyEAMZFwh4kftL0FmVpc5YBXGi7Aut17maYqX2RG7z60ISF+1/BUYRmUP5XpZ
	JLp0/QoH0uB58AR0udHuf3VEz5Lz28oqPKo+gKFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcaf43ca9-e87c1dbf-e357-437b-abaf-dc7ceee20be8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feb90a095c4c5beb84d391c9bbcf9a9e94a99c0eb463c042ef133da333e91061
Date: Sun, 27 Mar 2022 10:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648377478
