Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C12D7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 07:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655277839;
	h=To:Subject:From:Message-Id:Date;
	bh=E/cQh98VkUF7VQdj/hx00UADwSXmiYeatpXDXRNkimI=;
	b=C0vm87E+2jm3z00JUMVYQYL3XQM/y5luJg8LFwhuwIzrQERu6mE4ZDVVdtECNcRU
	EZTFPjTkPkImplQIB8xBccqudcZKhSA5q9ZKO+t5XcjCdBqNFI7j/L5kNeI0U6eyJxe
	7cvZplnrwbSqe56zyKknVqsLjklRR5oV0R1ep62I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655277839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E/cQh98VkUF7VQdj/hx00UADwSXmiYeatpXDXRNkimI=;
	b=CqmtLAVxR7CW6YCbv3Jdf85kUbWZRI5kwr1ZKxorTYJrHo1sluy5OEgpWeTR/zp9
	1syKWelk0GDwU4/sGSNB5vmWGL1zxz8NU96M8lLLlzC1EdoYwdxLN2gSKrsBiz14PHV
	ZrVcBOLiyCUmwrjUDvryShybyStXEZdwOVZUHpPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181663f63bc-15c2b4ae-acb7-47bc-b0f4-992239f73c1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccac924f593e28b2968df7690d32895438f30bf1c889ef920536629a580a70dc
Date: Wed, 15 Jun 2022 07:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655277839
