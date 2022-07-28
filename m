Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E9EA8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658975452;
	h=To:Subject:From:Message-Id:Date;
	bh=PSGvdWxb4ckacP8BWRoQmxoN+BqbFC1t45DiRiZ2lXk=;
	b=Vt4A7BnGRHRxoup5AWcgQzW6i5gXOoBmGCWMbtGhIvSnk43gZ+9kTKbu42AW1lgG
	vg++ojYNLzPTgUKGwg8HBClTJMthqrWW1ncthntOH0YNnE62+R/xeSeYuzpYp36mVHh
	MArH0z960tXmd3YXV7oDLcJCPXvOsbJ8SuKKFLV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658975452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PSGvdWxb4ckacP8BWRoQmxoN+BqbFC1t45DiRiZ2lXk=;
	b=RURhZ6vIU/+M14BgkBBOW+guDqNXdy2HmKJcvviF0vGsUzQVFDL8H9NCPGGXY1p9
	M/xLxXEmegy4M/2bKFmPxYVuO0lddF6WhN2eacVZrYr15kpe9lxd6bz2PkWkS+JhLpe
	MFmtKk330eXEZa3I1g1vdgQQtPnb3UA1rdAD2N5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242a47d99-14d0de49-e793-426a-aac5-9c6e59edff7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d23426d27604f6d5ad53364f9759d5d4f133539c3ebb299801c71e85cdc06d59
Date: Thu, 28 Jul 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658975452
