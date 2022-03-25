Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEA97E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648208758;
	h=To:Subject:From:Message-Id:Date;
	bh=y207WjK3zhhnx2K+FHNkd2AcUfor9CJidbFP31x/cNg=;
	b=Z7qdTp5GIElX9XC7PPLWyeriKKHs15oan57kVXwSayuk6iTaemPBF1CZK6gukpBE
	96cqUckNRvDJn7+RnWw7Lnhve6q2wDnxf3F05Q9/zNveK1TMMp+F0/n/7faxUfysYFC
	fODp5UsRbXt3CDE8gJZTzQ3fw9o7BBL1QtsiBlJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648208758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y207WjK3zhhnx2K+FHNkd2AcUfor9CJidbFP31x/cNg=;
	b=ar9Tv9zkKSPrA+gwFarfYel+0QjLbHIEj2kRYmLk3/+54TG0L3xstnAHfM7VqaLf
	2fyHwZKo+/m9wt26Zw8ETNhNcsHfMdn9i24VfojcvF4eAf/Ze4z2vX4aKq4/wSeeFlZ
	IY0QuT9sQZr6H9t+3WpC2qJlgc59qFgd9HrjKa2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc0e5c609-abe1596b-ee0d-48b6-b85c-9e9867c1385d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be1da16a9630587216b26ba32611f068100b26ed1a66eb2a6df4d0ce0c8857fc
Date: Fri, 25 Mar 2022 11:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648208758
