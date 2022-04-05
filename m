Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDDB15A3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 05:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649137378;
	h=To:Subject:From:Message-Id:Date;
	bh=ozaI22nc9rj24TKqynzSCYnrmaW75rPCdvWzzLmmfwc=;
	b=G+W8vo53l/VM/NECOv9vl+zN+ShrwNIRnvUX0WTH5w+jaIBOFWKwqOq907huZit4
	eAqr3ccjWQwNwTBCgegSnsqri7RbR/3WeI3tQ8HlXRIItW0MaGns9A5Q2ZCCXDxvGnZ
	tqKKOw1SIPshjXoGF/TspunT3LO465TX/hI3Hbak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649137378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ozaI22nc9rj24TKqynzSCYnrmaW75rPCdvWzzLmmfwc=;
	b=EfPOqsv4CzhLRjTj1iE32LHx6afZJ3uaKtt/g+J/4GCgR6VyZsBKS0CEkXhR0no+
	W2CIhsRkke7JImM8/cF8wLKLc2zEpT9DhIbWloxmvo5MjJqyxfs5ExXP+LO7oCVGqVD
	bvGHI1z1PCkhNFfWUuWMy9ZGM2srL3UHj3/Ah4M4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff83f63ab-251f7ab6-64b5-4f92-94de-a001d9881353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ef89c01183ce14315520996e5c52688288245920515135f43bd0c456ca7a83a
Date: Tue, 5 Apr 2022 05:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649137378
