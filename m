Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7734414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657637812;
	h=To:Subject:From:Message-Id:Date;
	bh=58yIWyKavKag2bsgIOCx1yEsTJLqBdAOU5IxFFmeSTs=;
	b=e1xWl4LStL0RC5H0MQZcBXQsGTuqduyTWfR27ZCHfbQitCGQKR1CBlA67k8tHsip
	8zSAgEriMyMtdov6ciwlgp/8vgfn1IuqxQRnLDv+TVAPTZ3LJ4X2fbdRQ9eiQtrhnh8
	FufstgNeoEq1x/yE6FFYaOCqAgVAZJRb8xksHU7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657637812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=58yIWyKavKag2bsgIOCx1yEsTJLqBdAOU5IxFFmeSTs=;
	b=cLdM1RZgOswhCO55lbwnrvxjmVHvd8Ile/Pvh4esKpbPK6noXGir6O3jAVSAS1sM
	SfSvP/unqXmIDaaMdanbCiMf1wMTKhloWZC0wC2lPJ5UBFShUXbknaIR7BsYDNMwDNp
	RKnRlgqMFkbdZMxiVsKGlqQ6wGm1c26FNfqHHrZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2e9b82f-a91d6a6f-25b5-4bb5-89b6-d2dcc8cf18f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ef09574f80b823d00b45827e5310352e3312b17fde7410c694f647c9e554468
Date: Tue, 12 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657637812
