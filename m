Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1A01C07
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661256052;
	h=To:Subject:From:Message-Id:Date;
	bh=XnuzZ2XcYHTBxgIFxPThvnTwy/XKFN+U52gmaFnFti8=;
	b=bHgVSmMLu4/UpI4Z3J75ewdVEFGxa4ElLJ7uMzsIttBXtVHaKj1FOKvnxLuuOEzh
	rFK/dhj241NYAaj9Q5sJM9ux1UXHeYY1SyhG6g7kqYy9r2/oTBEUBElW32IA/o4TEmD
	X8dA/t619CY6F6XaEQ9pKNWWL7U1ssmR6PyzsISA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661256052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XnuzZ2XcYHTBxgIFxPThvnTwy/XKFN+U52gmaFnFti8=;
	b=NHIRnIldfzHw62ctfifCbRNlyrJpysnqDpjYqa/yw062ofyn0hvyF5GoMM4ASCSH
	nkv48vGCIqTf0IarcMoBjVreTycm646BGzJztoU05F3Afc1qc2BwpxC/r30jXVPbCqN
	E1PNLWIoYEhZ2LJrlNiUhL1iuB8fg7jpDSyRivuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca93af3a-ee737998-b0ce-4481-b77f-8245ce55db88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c92f1176f3b2a705fd0bffbe47f5a9f2b2b8b59b5870454b772c7c669f1c44b
Date: Tue, 23 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661256052
