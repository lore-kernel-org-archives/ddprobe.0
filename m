Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD4D622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660353652;
	h=To:Subject:From:Message-Id:Date;
	bh=cQEn8xYzcXponJ/o+lbiso8pDzheOMWcpKI+WJquDPM=;
	b=SAlvYxymoIFKu6C6/Bjo6hLOBk07IJtmi1xy9/Nkj+d5gjehRXRM+gbB78uYDFct
	tOtOc9X1aBoANqGd9jf3/3aiWP8taTyLswr4Q5fIMurtAwa0Ov/D+vV+rAUNN2CjXrF
	pWp+FGyELNgLeBDG8XQ7CVrL2Rv5Amz+vj1runPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660353652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cQEn8xYzcXponJ/o+lbiso8pDzheOMWcpKI+WJquDPM=;
	b=k6XPyq8nFWbhULLlezBHL6jjz/Gr//D/EBQZT+JIQsvjdI57N3a/7PI7kkkdQRlF
	dvvFHZ8a49z/zh/xMTtDRYqXMKqnwHKghIPEs8R2gWByxRvigJ6wgzQPn0CmfiD9C8b
	eWx7/xgy83lMVXgNEXphXX9+WVwCzXv6NKR9EWeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294ca2741-ed03216d-e2b2-4c6e-ab30-d49d571ea9d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fabb23274ca77437e72f4bdafa6eb02fc53546e76093babeab575e2497eac1fa
Date: Sat, 13 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660353652
