Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEFF7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659045652;
	h=To:Subject:From:Message-Id:Date;
	bh=Tcy5nfhPjPBLRAuaRK1SWfPp/ZK7MMWRH25o2FS/jXY=;
	b=B0Ddeme2e/uIgVKqBwx6pDgBWJNiBUfgkek4LPcN7pAPEwnID6rDg8UFiRAGemHD
	mxpEDDQ94twxMtU7qihwrnzB749L0+fElOJnC/6yphFRmRBoN7jiyB6RELul144JgXj
	BOdmv2X/N3OB+JjDyOfYxbQbqMkxB8pqLIzucHoA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659045652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tcy5nfhPjPBLRAuaRK1SWfPp/ZK7MMWRH25o2FS/jXY=;
	b=Tzdwkz14P/Gj3rSGqa9ZFVC9+02WhBRtXBsUt9N0hNKpGuqR7tXeV3Mu9H08KdPF
	+501X5Ik+fyTEo7z0woaGvtiO6mLUq67U+DRA3yaIabKfE8y910Vi7cGfzC8vf9aMkl
	huEAigWsASjzxu7/4lw2RyDDM7VF3SiwUCV1VbRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246d3a851-056562e7-1473-4b8c-9d81-c1396aa8b044-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94b2409b2ea9d3801030c696568e893bec286989cbb6dbcb5463e5df53c804e5
Date: Thu, 28 Jul 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659045652
