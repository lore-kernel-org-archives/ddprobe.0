Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E287F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659452453;
	h=To:Subject:From:Message-Id:Date;
	bh=TC0ElXnVoDTVg6a9blE+SDu44OYksLm/PQOzor7PcfE=;
	b=JsJL0hemKyQX68Yr8r9OW8jObsUV3d/8dusCnwDNF4OINoQjSNF/pV362A7wlZ2l
	fXdj2HJpUR8FBTFhxuDTYPYXehjM0LgwkcMOICTKl5JI+YRSWBExeqvnI/5r9d2if2V
	LY5qbDtK9j1vKVTya8V0uIskDLP+Q1n4JyLjjROk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659452453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TC0ElXnVoDTVg6a9blE+SDu44OYksLm/PQOzor7PcfE=;
	b=OS7GNZD9ceRBJ5Pvof9R/eN54eVUN3w+Ex9KGN0Ak4JufS68hTutihGGoa4VOvwi
	RaLIU9XfPsGWlW/olM57K/A3qE4HRK6bvc98ThExd01WQKffW/8/PrJ7jMebr1mOq+X
	1OoMouhAgV2PU3oBVYe52E9s0CnxinTEd+aX+k58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f12eed9-c655ccb9-773e-4315-aea9-82c5baa3b3fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 818fb1100b23c8d578aaa0429b9bd89b0d5de280e57904e12dfce05f9957cd43
Date: Tue, 2 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659452452
