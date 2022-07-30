Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6AD23BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659169252;
	h=To:Subject:From:Message-Id:Date;
	bh=jWLbDgO7h/Nb90IWyhAd+K+mbqVxE+QDQHn001CpI8I=;
	b=IgfG9rbiDW1Yx3rEdR7lwy1p+xQ2LNkkKIFIDIg6F1MhXNvKKwHK4UNPjdQXL8lv
	h7fnYvgtlWvkLrVfswhDn2q7BCegto5Rn73VJbS5eUaGTLvPSR96FclsDsk5BgNS7Iq
	4P8/1A/4gzzBNnfedcEY905BhA4u4ZkAxRxzf+aM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659169252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jWLbDgO7h/Nb90IWyhAd+K+mbqVxE+QDQHn001CpI8I=;
	b=kSTj2ASjbc4xoEgs2fcwYOa//GqE8MtHxKtaDx2XljT0DbDYcjIgLVJ0XYlRDS8t
	IkvesNHym6D6V7w4VV0CR+NHtfvJg8b1k5dakVPsXjEQYC7rdyH433syySDij+QqsMm
	7kaH3nn0HvT1WA2ByQwd8/y7YjpXz0HwzcHEKfSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e31a4e7-c74e21fd-f710-48b6-9f1b-9399b42002ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9389036a076afe424792323bb67d3dedd0577f183b2349cd371d0d4e543cc00b
Date: Sat, 30 Jul 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659169252
