Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027F87B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 12:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655555939;
	h=To:Subject:From:Message-Id:Date;
	bh=j96SOC531Dg7RtqKDo9LuLNAG0lAQ6jZ5Kt7ppmry6A=;
	b=XEfD0Edv8hyqoADpBZ+14KHCFAs7kX0QW1Q76y7ucBvA07ecEAjgWRmkHCa00qA8
	fIl4LFlfcuLoT8+1H7w2E0un1XiSOZixoPEPq1TBc2f9uCYMcjkaYcjYEwKPryc0i0x
	3cTHnAzKpG20qDcyNPCnFnLBBVmOcUvtN8TSTk4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655555939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j96SOC531Dg7RtqKDo9LuLNAG0lAQ6jZ5Kt7ppmry6A=;
	b=B+mEKAYm549GoIKsa4CFPYvC+tb6i0B8sXpBR5JxMk/cSB+ZMm5gEds6LVeGLNaZ
	WCjydx47SwIStH9y4uvSs8rbQZlAbCKdxVazdmHV9MvkK1CpwNvL1lMM3KNFRTO6edS
	vQaVuyH/eujOcKqygh4r+4hCUuW7wfW4ESrfChNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176d2dbf4-be7e84c8-95ea-4c1a-a9b6-98d42665d508-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a98281fd3758e62ba522249e34c9da88fc52c590d074d3b69c8531893e6aca8e
Date: Sat, 18 Jun 2022 12:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655555939
