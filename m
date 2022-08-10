Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F7217C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660103452;
	h=To:Subject:From:Message-Id:Date;
	bh=1VpmaRvQuq4TLMZWZ5eYovEgdsy8Fr85kVnMF7bXEIs=;
	b=P0QvFgci5D3Z7sqkWi+9g8Lzh/LdNPRxDweeSJcvwbH66UkUdUrnDzgE0uz2GVDf
	sOsjTitVgV2tf9nHvjp4g+iRDsWEn737K1UBIWJjcz7+t1JtXfM/hpQT9o7FciC+McM
	fJ6zawW61HvCNa+R5RCUMShQVNAxLw0y1qErnsvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660103452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1VpmaRvQuq4TLMZWZ5eYovEgdsy8Fr85kVnMF7bXEIs=;
	b=KgMlS6VcsyTQCwGFXt3x6mOwPQ0I5UlhvLLkQujag6mQlmLW0AjoFXBDNfYAH5Cx
	HdPixNCrzSHz1pKNHV4DZJNgtqLyVgx7jIrq9U2o9uHGoU3TfZkE7fmMjiYCJ63eljp
	yQwWLxT+Czm7Wl/43sRuG15Lw/7VYcYJ57fOlT1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285e0679b-1240138c-fab7-4ecf-9cd4-83cddeace323-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 290bf86c731c0bf2d44bb2a4f1c4df7b70fa054abdd70d01d4e632e3cb9dffda
Date: Wed, 10 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660103452
