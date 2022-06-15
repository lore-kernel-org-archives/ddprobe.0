Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FFA3FDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 22:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655331359;
	h=To:Subject:From:Message-Id:Date;
	bh=YjzQJ2mlV5AtysRd5T+iHbrtOwWQH6plmlAtIUfXHXE=;
	b=gQhG/2xmkB7/KPtZG0BqHKE5AeXqEb13Q/dgxN4F1uEwzyPqXi8OLHV11Ux74E60
	wRRv1Jh8HaQ3j7ibD7LZiL9902UByDwERHk+ki+Hq8ZuK0vzX5NDqhC2EAklDsR/BIL
	8+t2TnNKjq4eAupeaYiS8K5KINfvX8mkh1gpp3js=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655331359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YjzQJ2mlV5AtysRd5T+iHbrtOwWQH6plmlAtIUfXHXE=;
	b=egCVqb3OBskufEMfVXZ8p/Mdnb5l7TrfkPi7OFughtmrbanDBt0X7TCXk2tYOXJN
	kPKSl2kbW3085fNFQCPI45ai+ZEdIEFpB2S8X/TlQmmfsfYv6s+Ixjc1cLlYi/9OWvb
	/59i5HIiuzHlvzWLLF/uvoeLY7HTGDWBlgpzWHJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169700a0d-3f224553-7165-44b7-b1bf-5db9599bbe39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7e0be48bf3384ab705af2b2ee8dce6acf575b3f52e893a3ab1dccb8dc089d32
Date: Wed, 15 Jun 2022 22:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655331359
