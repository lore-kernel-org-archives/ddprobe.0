Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2C97C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659871252;
	h=To:Subject:From:Message-Id:Date;
	bh=mBUTbnLPr/1+heu1TGfPR7H9xFJnxQgmN7P2CvP9vO4=;
	b=H2OCQmnwvXQ4jjIpiJn4DSDUjeTGi53rmOjOYcfaxiIW5m3f94YkJLtgys6MkaNV
	lmakP9zWr959fPce4tkOXZp6o0+zZz3YC7EKUX7xbFLUbQ8xwDotXF7KGP7e1N47BHu
	9oImbAk7meOYhuTVByiiB6ujuXXsyrUrZ4vtq3VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659871252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mBUTbnLPr/1+heu1TGfPR7H9xFJnxQgmN7P2CvP9vO4=;
	b=jaINMt0PMia4roq9cksnQHy1OIcUSsOClapYJJq8tWUrOKDcxflCaRoE08XdOOpp
	+YFAK1Mb67jkizBiux6grfZ9WJGv8faAlh8pFKtXgLfPCggsZgRgixyrPC9UYcdi9Zq
	IRSuKc8IDN3OANhhRNU5qGy+slrGL8C8ujCJszFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182780950b6-e7179d81-0713-4849-8382-2518723f6c5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7d855bd36b67c0b5c5986dc158e09d97b911a68c5058299dee6a536ff7229db
Date: Sun, 7 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659871252
