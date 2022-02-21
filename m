Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E748420E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645473385;
	h=To:Subject:From:Message-Id:Date;
	bh=OCx93PM3RC5udraFXaYgMwjxAy8UxuGX0idI/DMxMh4=;
	b=lz/IhaxbF7KMyDrG2NDiTO3O5iK3Wcm4KZTNGJtppvKMKG5CVLN+M1HdbicHpmIz
	vopGnlooS/2E8liI+5sbdP6xjkPyn5/LkKD8aAPMX2wmZgSJLNPmDc2YwvaOniNoy+0
	0tcU2dCnWpzx3zzd7lq+2/AOBeeMaPuNkHhiNmJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645473385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OCx93PM3RC5udraFXaYgMwjxAy8UxuGX0idI/DMxMh4=;
	b=Ouf9L/jkKFwGDdU0P2+O+o0q8ZgL/G+crsY6D0MC8Eyg23WJDhYvf8spEQSgvEaZ
	mN+g5eyXuDZ7LpLyE3Ec40OOa+gmYfWSWnQ7Ivbn6T6wnlhya0GmE8E+0Oe69NDlCmk
	VbGvXJGordwCUcErn+KAUnCH+SnCZw+A4buFO80I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ddb497e-e99de343-6cc3-4d3e-92e6-097f5bf9c9b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17c726bf0c5ba17f836001d38e47ec186b41d0cd6d8767ffceef9b7d214eab1c
Date: Mon, 21 Feb 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645473384
