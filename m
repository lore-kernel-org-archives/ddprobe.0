Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558D820E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660191052;
	h=To:Subject:From:Message-Id:Date;
	bh=B+KhEegqlSzofprCVJlNo7Kgdcgg0Zqlg06jvB7s3lo=;
	b=XyZfBCTrVG27dfVtldgxAUk8dXPkmuxyY9rxK85aXLWBZQr7bPGT0Kfm5RUzt3V+
	HTD3H91etxeg9V27REx+dite3FI6uYrGLNGr0igCwnSvW6uzdRr4W3UhI51Eji5TEVt
	vaBRwu1Us/0qPjk4I4PtfiyelvJZ0SAiiFewlCUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660191052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+KhEegqlSzofprCVJlNo7Kgdcgg0Zqlg06jvB7s3lo=;
	b=b+4uXqpRSOJagd8/lPRULqJXPHGxZkmuTaXO4Hwftu6wgxC0lH9ViBilrOhxe185
	9pNjsQPViDRFeqlVphzVYnsk5h1HNnUi6Dur95v3LA33DN/QG5cA6kDc1Tpd5nXVciK
	5Dt9kRI/EH72LTpeLdlfiUD5bkFQ8HblNjh4iqOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b1912e7-fd5aa5e4-ab3d-4f14-a9d9-0c4f7ef7db08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b2ee07a7493fcab47843d4d8223d594c4b9746d94ce2951726e9eb7b1dfb21e
Date: Thu, 11 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660191052
