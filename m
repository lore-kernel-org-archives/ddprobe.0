Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16841852
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 10:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654424759;
	h=To:Subject:From:Message-Id:Date;
	bh=6CXL+GxSW4ImCMMnXT/prLdbL6OIqwt40zhvUPjBeu0=;
	b=GmaZGYg7GM6DjZGt4H2OzAGz7qFVrcJvmgDLFSY0fF0ucXBlo1M8iYHG0VInCw57
	uPtMc8XXdIn8toXmswkELpJ4/7z1+/dK7SF2RZYfFI2lsjykVfEj53s4jO3YhXXNU2x
	1A0aGEXv3Irr+QGiLpUX9QrQSSMHgS/+f8ezotK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654424759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6CXL+GxSW4ImCMMnXT/prLdbL6OIqwt40zhvUPjBeu0=;
	b=VGEamgndSrF8K44Uhrmyg3mHJ3W1u4FTXorO2xWRY8FhKf4JVGWxu91I/tYi1p/y
	fVjOPpJI//fBUNWr10oyyS/2RZUO4wDXq2WXla4bXhjKdD8ncdL6azibNmDEYkX0m+Y
	CIkXIEu2gPNwllZrX9vzju2mwbpFJ9eGuNYFQD3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133666be3-ad7ce5da-1605-4a63-b30f-91145e16387d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2023365941bc127cc1ccdf88d4f64415079d1c33c4dcaddb474d48761b969152
Date: Sun, 5 Jun 2022 10:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654424759
