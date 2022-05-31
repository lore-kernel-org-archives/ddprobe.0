Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26D517C9
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 02:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653963299;
	h=To:Subject:From:Message-Id:Date;
	bh=nVYeON3IS6TK57+c6+y/Mdmn9G3cZCzYFJb3lTayqrg=;
	b=WpqD68iWeu5nfjU5QTgGbdEjEjvyxDl5hZLMuK4CDCl4dYmxmzYJXmOa2xdsMDBn
	pVZvqq8md9rMe5Ft+f1olrMJRuNDg17+yLCnN2ejIdfodoH+Sds5NwNeFwOP/EBBPW3
	Vm5F7peLJob+/4EcpGPK2mdT2E33CUSc9Ffjy81Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653963299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVYeON3IS6TK57+c6+y/Mdmn9G3cZCzYFJb3lTayqrg=;
	b=VbDTkcwOr4CV2fvaMACIhEDcNW+YyxXlgoPurRSd89oi5jA1Qedk4MoCISpah75p
	AOjXV5GDGRkqrVBOIKikur0kQ/Pgkh4PA2GXj+V4EVN+gUFDUToBnM95ULs0pGXse8O
	iMGEOL9uqOFERAyypzKBgAPsLQPFGs7UlYnNNADo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117e519ea-fa7b9469-364d-46a7-86fb-e7c7d0b9adc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5258ffd05023221d876a34a6a70ce87ca571a63bfbe15e90cc55c67873443a8
Date: Tue, 31 May 2022 02:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653963299
