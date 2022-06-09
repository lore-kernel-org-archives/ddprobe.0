Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED987C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 13:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654783139;
	h=To:Subject:From:Message-Id:Date;
	bh=tSP3GmbdDeWDV4GHvytAQHah69D8KCXKaP4MpboP9xg=;
	b=DzcRVFep/LZ8XoppNGAGtlhcofl6O943oDqlbxXklHW+iUBXGqE6muiC+aZlAPMQ
	TI1K9RvXaPvJmrmX4JIJg6MZysTqZQAvwiXfejN3UKpxS9Kq/nsVDT0U1QSQHjnLOAz
	NFnoBp0eGD4k9tW8MGx+OCedFcWZrYyBmaUpjRNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654783139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tSP3GmbdDeWDV4GHvytAQHah69D8KCXKaP4MpboP9xg=;
	b=F7bAzdoUe9bFMtA9MNmZMs3EOjbb2El01iXgmxmQAbpwt3J+VH0xmmvZylK+MMk6
	06OFv8c9Co97u4yjBpnJxhxz7fmnkAUkM2kpjjqR3hnTxL+wrod1GL0cCwOOP+Ob86D
	B2Ii/UgcFc2RULoPJFNrTozqGVOVqTRasI9q3Ydk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148c2ddc6-49061466-2664-4e10-bf8c-44ef2aecb07c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1274d0f36dec264730138e3cfe88a49317e9f88f3062945945f5831ecfbc5dd9
Date: Thu, 9 Jun 2022 13:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654783139
