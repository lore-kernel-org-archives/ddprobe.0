Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7A16AB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656533213;
	h=To:Subject:From:Message-Id:Date;
	bh=6A9Iv93kH9drckSaIG4T+bVM8m+A6yPxKJy9ImscXxk=;
	b=O+EvLv4wALUyppp9zo4X1Cq8xbaG5ktFR5LgFoB5wM6WrWOuIE5wz8a94c2w6M+W
	x4vq2XMosF9qjDiFtZCktAFt3j9SHPcpuyKKo6HDA3HGXzxYOtLcYCRf/lg5WoW6GLr
	p//Gg3SBRio+oJM54Nhx+oG+MVHU2GesbP0Helx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656533213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6A9Iv93kH9drckSaIG4T+bVM8m+A6yPxKJy9ImscXxk=;
	b=YpfzDEpT/51Zk9jHDvGb5G1MKoZvj7PYE/2YoPLMPvcJYtW+3QBZI0ymp8KhIWeH
	AIZA+8HMiUWiL34JUeZobCAMWyR/lH1wiCJ9SiTKfvEHcxplffcYyNax5MyovW7d3Vi
	h94gSb1lHX8hl9IefTMKYlUE4NR5n+3btvE6aNEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b112dc7f-c2a9b155-002c-486e-9eeb-2fcfdd5b7eef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9517821ea9ca33d07cf7f51a501a087e23ad09955f24f44999b2182e4a9e8297
Date: Wed, 29 Jun 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656533212
