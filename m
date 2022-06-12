Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001A47FD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 04:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655009279;
	h=To:Subject:From:Message-Id:Date;
	bh=GqW3Mc1Rttf5n7zgUoJsLMxYUG4UVUJ0yamdSPU3LCg=;
	b=UMZ7s8v81zqrCF4fE5qZ7OXR2V3YxE7gjPyuSD52eINtQ84sS2IaBXU+6E7EM9Rq
	LhDgpRUUbPmUEPpOYebv/oVWDCg71wGTpCr6Fk1ShdMrlGnnvVnesgJh6hTVZBXbA0i
	G7qplRW9V09k90ejm+ZkrxQv1HzROHML3bZarLYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655009279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GqW3Mc1Rttf5n7zgUoJsLMxYUG4UVUJ0yamdSPU3LCg=;
	b=bIYUSDWm1BklMg+jrEO2yPW2yy0OOlM/AgnOt42I+ZkaBxS1FO/FF2FSs6MSGSLg
	Zr7+MGVMEKEkRMDPthLWAsLnDenlcZP0vlNI6NWaFSlaxxmBcod8Cgb4gN1v01rN3sb
	StKFGLx7imZpx5giNe5PquNcCv47D5FfullU44YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181563d7d40-89b6856e-75ce-4930-9ab3-9038805097c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2f2e6d904e49c2511754ce253b8da9babf0a73b2f1e24e4af1707caa53d676a
Date: Sun, 12 Jun 2022 04:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655009279
