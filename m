Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE191C04
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658235412;
	h=To:Subject:From:Message-Id:Date;
	bh=ERKGsvoQYOMWqcSVTU9bqzozjrny6mhZ4E7UKFianxU=;
	b=MdzQ0IhDunH4ADnm1mHDZmwgIjvRfgDlicxfFYIXj+cqgRMMd2cJF4+QjiFbDAO3
	rPrw3wyDi/z/7ZJT6DETQeXdPbxkGPBdN4bUJyJhxTvLUyRjIKmGb8+WZ18tQgTy6fq
	ntMV34/2hxBU823srFDDC2e/c0b5PaZMobLVYzTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658235412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ERKGsvoQYOMWqcSVTU9bqzozjrny6mhZ4E7UKFianxU=;
	b=flBmNX19mje8jAw3kgUkhFnJDnzOBzGZ4VNE8vr19c50YsqDTkixdP0VF2SThQX3
	nAclutPovsmvXfsdu7R/cNv2QsZ15XgKHm0gM4eFbvbCG2PKe9EhZ0dg8DbnLfCBjP2
	Dctktj/M0x4YpNEWDBSVWaMzMDGYSUVA2jp+Pt7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216885f2e-3957c3dd-f466-44bf-980e-08e6888693f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c12d480c4cb3d3b1a2326f345cf02d43fdafa2e5828197d1040ae4b94cb05cc8
Date: Tue, 19 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658235412
