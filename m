Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD669290B
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657882012;
	h=To:Subject:From:Message-Id:Date;
	bh=dcXxgySWf5oESaD/N/Kwp8jKqhwkccnw9USNBZl9deY=;
	b=H1yPZKXsOv4gFJ3odQFDxENVHN9rN0u+prTHRIgJt46Bpl82fd26P4Ez60o6eWdt
	D3Wevm5OjZ/4eSRduUx0oSEolevl3JcdM7WK3WkQlljTXHz6buLoW2oDJCXpPUD3zAz
	F28OxbvAWnA99/tlgTd/b2wNKDxGDLM/7Av6ahmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657882012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dcXxgySWf5oESaD/N/Kwp8jKqhwkccnw9USNBZl9deY=;
	b=Zo1I0Bpe+l3Sq00PxEEczwodVDb1qiYdFo+Z3jzmIFsnWdRFP3MVqC/vRNOF7jJr
	F2BoSamC24bwIfVP9Tp+aZpjWKzbZNfZCjkE5NiOs/bowvZD6fP7U4NGhjOBL5CwnHp
	j1wsEILLu3v9c6b8fhQwhpi8yWqZcNODOWbzbQb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820177eacc-6d8bbb39-f255-45d7-b72e-cbb22e7273a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 511bb9fe6162b389f8e817d25d27c761388bdf13b37b7b29d375bc6f8a586126
Date: Fri, 15 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657882012
