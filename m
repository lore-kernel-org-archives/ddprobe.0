Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE927A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 09:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655370839;
	h=To:Subject:From:Message-Id:Date;
	bh=HwhIq4/SvT3yZ/sBFAWMGOyLZXfWkl/kIEwCvIYxErU=;
	b=hsUe5QR0JVOqaWctOU31eUTMIq+821B9uPE20kkcQH2f8ebI426g0hwq2xp1RMLt
	vJXfumN/uGglwpgGstwnNp+aUTwkL+VRi0o4lfw/cy3mdMFQGoZ4ozdGhizZDv0wS/W
	KJef5SczBY/c4nRU6ImIKn+L4Khs4vG07shAq07U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655370839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HwhIq4/SvT3yZ/sBFAWMGOyLZXfWkl/kIEwCvIYxErU=;
	b=AVH74j4BbIPdhIyAiUNsiwAITbartTS/sdIWnwwspUato5VhRpKE0APvr9oRltZv
	7GrTqx4SOwE3fZviGzZL3sbzUpccKtd38+Hxh+jXhmlj5d8zxh4EYYu6W3GsLdMdcS7
	Y57DP7v7mikP+Bsl+3S763KvB6a1SlpZbwTaN3jU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816bca74f6-784ba748-22d5-4982-bdd5-0c1511b00bef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8731b752bcfd65fb6057cf8de2b152cb3190ca0b3e28d86f1ec730fd7780e1a
Date: Thu, 16 Jun 2022 09:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655370839
