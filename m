Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DA7A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660462252;
	h=To:Subject:From:Message-Id:Date;
	bh=CozPaGnAQteEMyA4MFrtsFWwJHhe6s3+PfvWA+GVj0o=;
	b=MOP/wF/sWWfTPJEhlfUNs65BlI2OUpOty0jS7GHob+91gfZq5KEnoGgi7PKMVouq
	t/UcgRe0RJJjOfqcyVFq8jqQj04/4QBOIAV/I1lJ6hRT7/cB95yPoKHuFH/S7usYSTo
	JfHuHNSL0hsEZ4iQwjEzcOtakP03orn/dY7Z9SwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660462252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CozPaGnAQteEMyA4MFrtsFWwJHhe6s3+PfvWA+GVj0o=;
	b=aACUGz4YgR9rOQ9ht7MKeFLoj7DwSVWgNmp+BT/nbNPTM9iaxGv65upHxlC8A5Pq
	eczdAS2qghxSSVF/BF9JajN0FxdqiwEDN0Dm6xtaz9xnZXUOubYAJ/M2VVDMuJ5W2QH
	WkXIEPVNgtnAcnUUZevySE0/X0bci50RA3J1Rjco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b43424d-f08b7417-1a27-4323-85bc-3c72d842db3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96dc67fe5da1bed15653a315b0608b603d313745bdc7f266af04a887d609ab5b
Date: Sun, 14 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660462252
