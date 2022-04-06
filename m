Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D927017CA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 03:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649217478;
	h=To:Subject:From:Message-Id:Date;
	bh=6ZrDnbANlgEDxThn7c2YVqr6mwNElVeh4y5U05Rlo4s=;
	b=AMp87GAuLtiRX65Q+SZ8CVs4j2m7clr1hB+mRZE2XUCCk909zy45Ge5e93wgu3Mr
	r48/2ZQI0dzaS/c1j77F4B54xFzUq7ZkZw8JQ0BTSQfPse1526ChXWUpf9rfhouMidw
	PMOIpyj8BH2c+q4yrT+7o7a/fL9z/rdER0xlUjaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649217478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ZrDnbANlgEDxThn7c2YVqr6mwNElVeh4y5U05Rlo4s=;
	b=TScaX+FgrdAWzCQXfY+5DUtxnLPQrS3qgThWGrlE2jNaJGivQrcIEL3SVjvvVi9x
	jI2PhzvQ8I8K4qU3rigFuSoS2FviVtqLla/mWKBL+9elX6ba0W7xEBxLWYQpzR3xvPE
	IFF+mh/zLnGP78Z6JZ/b5iUE84uRSGttXB4G/oVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd059e81-1a3c5984-4e70-4c8f-aa46-176605271826-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33e6c7a429552c283ef37c4dd27431851d317bd24e556d39158d2860b3ec9be9
Date: Wed, 6 Apr 2022 03:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649217478
