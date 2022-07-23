Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0634F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658596012;
	h=To:Subject:From:Message-Id:Date;
	bh=/xdcNyappwqtBubq9lqlMfgXoVdbHd1/NoVfEVZraGI=;
	b=EogremLCdcmA/Di7ufAHOc/ZIRgx48fL7cLmlW16pfd/tsNTkx9NYLJmSlbMojfA
	NWdJRcwNdGembS4X6klSC2nSZvIXh1cK84MwpB+v5jYff+/oW2vmTiNZGd8rJ5b8VzW
	yuejw9spn4pLLzEhJ46IDgO0sVMzxDim5ZJ00sC4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658596012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/xdcNyappwqtBubq9lqlMfgXoVdbHd1/NoVfEVZraGI=;
	b=OFyjuPK4jLeS1H8lXyHIxmFKYJyn1Va+gLd40QGkPY6fsLjAcV8qoq5VRfXMfYey
	IbMKf4HLL9HRoGDES54kPQ71VeKpa94qYNq1TV5fdScdF7kk4R3FXLKBOb5iEPt2qTa
	h64JihHHKLrzyNGhpvKlroOBLdz9jrCwOKf1iw/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c06b0e5-c3c89ca8-4737-4e2c-a9ea-14715f1e19c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 078a1ac020924185ecdef01a181cef89919454bcd7671893fb895f94a317a7fe
Date: Sat, 23 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658596012
