Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4C8361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647096684;
	h=To:Subject:From:Message-Id:Date;
	bh=PpTokKCc5KF48FpQxfeH90DO2x9YVdVSwldZdeniDWk=;
	b=RF+9bKByudugEnRYBnLL9O+0F2fXuz4xixji1Nh852BIAl8CqAf/oZhQ1pnBos/3
	GOyEyyP2kxRH9zBGeV4xyeplyPOW2bSDGnuIZybzI6YtGYnzmoaM3DK1o0j/IiotfDe
	2QHH/d8JKPLDB2Vm4h3CWVTxC6wYZItztI0/6I/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647096684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PpTokKCc5KF48FpQxfeH90DO2x9YVdVSwldZdeniDWk=;
	b=Zwy0VfsYSufaK+0O6Rck7YGzFW2RuvXIVNPC8smiusQybSRxO2mES2wdHPBFSXsM
	V5pg+qmM3V1FPrRpiMlkFmQklj+qNqIvEr7tZ6NiZuelmEF+nRK9xjgGdZ8P6ln7L0F
	bFmQR1sPTxVkppvP5gXEN2atKK0gVcOkEcS11OT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e9ce0d7-956345f5-366b-4773-9279-7fff582a3c71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b516d42f185da05ad903c54bdd95f524fa9638f48827249565f6612a624fe561
Date: Sat, 12 Mar 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647096684
