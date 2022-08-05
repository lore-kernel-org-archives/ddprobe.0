Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1207C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659669652;
	h=To:Subject:From:Message-Id:Date;
	bh=pRoWZhANM+egL/NtpVDRmvJ3qAurjJjVy2/YwkCSkTA=;
	b=SncIEgeWEbMKVzrA+vN8vF3wxGe9eBl3s8Z3bpB5Rw7S59UZsv14pJt9LwbyzAwS
	xft1wKdo2BOrNtSmsRLPXnj5H+6bNKFCEsQ/cW0aMCwYyrpvW0uuOJdTBrnytVoDvLc
	E1O7WeYmnHVuwRSpiBWyU/yDw803nuiAfbth+8bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659669652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pRoWZhANM+egL/NtpVDRmvJ3qAurjJjVy2/YwkCSkTA=;
	b=BIDwSUMgmfTtp47M/zJp6fRdysRrGTTJiLsLZfQaL3Y5iTvNCruImwfuSn8tAFqv
	STiTrJistVJQCq/1PMs6Uu8iTxPI1cjklaqtEcet7zaiv1xW2lIP2bbVfy9wOe6cXC6
	rKkF81RqQE6ppdvEpgi2npdcXx1McP4s6GbUshvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c05247e-95f2708b-96c1-44ba-9099-5292e93e180b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3150ec3a371eb137df10560994265bdddf02a1dde6224efcf8c610d75d50aa4c
Date: Fri, 5 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659669652
