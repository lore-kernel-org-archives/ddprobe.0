Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF29C15A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 06:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649140498;
	h=To:Subject:From:Message-Id:Date;
	bh=78iOkzlV/xC2wIJUSbTsf0HtbjEMBK+81LNSEMqUpCU=;
	b=PfgLjss8luQ/cejDXDcsIbw5CQSdH9H/nRjmpgGdGM08m2PeX/0Jv1S5R2IaYMsq
	xKEOoAF3cuaiX1ov1cI9ml9ZNgE3MpmWocIb8sl74Lz3SBZr5vnqgtyU8JIzc1CytV0
	vwa7VjnCrmFo2B/DOoybuen0v2JEqqHS2izCjnwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649140498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=78iOkzlV/xC2wIJUSbTsf0HtbjEMBK+81LNSEMqUpCU=;
	b=htIWInbvvtI2Nq48fNYPeabVnPinmKZZ+qy+8mzZeGT2tP7Q9CFHwUZQAV6PPrIT
	fd2nQUK3nLAe/twsf2duX9BggwWVFwIsqds39mcE2ez6TEK1MmTfxKshaApjmInsSrv
	59IJQ/lIL4uMNFwzBREs2JiA/PyllCPmyDvAmgI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff86eff48-3c5e6b93-e4d9-4feb-a1a4-9e602157598f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70fcdb33867aa243c5bad51e2f2588b8ed733dbe4401d5165bc74fbf150f05bb
Date: Tue, 5 Apr 2022 06:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649140498
