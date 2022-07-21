Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494944690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658423812;
	h=To:Subject:From:Message-Id:Date;
	bh=nvGt4m/SDX3aAfIS9LzqBE7nhJzRzmusc+er5VX3MWo=;
	b=j4PXyK1LZlGIAFn8mdCUNXHOFMuyOG7scgsWwGKvzJikc46cCvld4rMleIlxRVdD
	DJaV3/JkrPg3py4bS6wwfa90NBCX29aQFt9bYB2/ND84y6roc1ilPR7SaTSMYJkGclc
	I7pe3uUWCAgcDH8hvbu0HBK80pVbQcGOoVuN2m7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658423812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nvGt4m/SDX3aAfIS9LzqBE7nhJzRzmusc+er5VX3MWo=;
	b=T6APShfB7e2uHf0owYPBP9ObP8amEhyCcmulAimSzG/65L2luaDea0PszI6AP7tY
	RITxIBfXEsN3YOMsQ1+pczHaPHBuVhWihiXZTCppRN0klYBwTpV9lp410lUqhmoQSqI
	HleNbIgWmZvHdnYZSwpWHZby3dt6oK8s1MD0EAgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221c320c6-9b16accd-504c-47a0-a034-4cbe35522b0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 092dfec967e64b8f03f5082e439bb1ef6d63fbb623b19d1005f74078235cecd6
Date: Thu, 21 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658423812
