Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B2E10FF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 05:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655874959;
	h=To:Subject:From:Message-Id:Date;
	bh=0eJsOVM3UUsWCDL8BsYN+GqZNTMxxh23OIkbX7Or4xE=;
	b=gkBdBs0jJQ9LXOS3E0ClpqY64e3jYRg9dwTxxM+tQ6GIFmgoEIvQLKasgXe0ehHs
	pM7DVXn7ZQOgejaWE+2yltcqCUkdOaBBWyJ7G9jqQQ9GAJxfJSAQstMqqRKJhBwY8QB
	sqAha7t1k4dnn4efn1Pfkmk8DLq/6e4pJ6AALgLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655874959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0eJsOVM3UUsWCDL8BsYN+GqZNTMxxh23OIkbX7Or4xE=;
	b=IGMYkuqbXCyKhogrRJO9VfZtaF1NY6LoZCVH4YbqUmKAPp+PvwerKomkgr5i/p1n
	7iNReEqY0q4se6CKGQ11jb7Jn+BucZTSj6PXBSdfrA390L02Ke6krRHPUf3zng1ztf/
	OVsYcx3p5YwvIjrLduYBeu7RCnBBIXWOb/7FFMcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189d6b7e3-64e98727-e159-4e7e-83df-778ef8ac41eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: baee016e5f4635d0e75c5ff06c6db772954280fcd5e2c24e9b2a93e0dc5dceff
Date: Wed, 22 Jun 2022 05:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655874959
