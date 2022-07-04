Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB1F17DB
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656925612;
	h=To:Subject:From:Message-Id:Date;
	bh=vPHQvZGE6iv2OwH0bx7Y7kCjqbY+lN2dZpvnCORr56A=;
	b=Wf68J13snzW69sp/Qnp8HK3SF9UY33/KF2cEnHWKvSBOqJ/7ZX1ayv/g9K0AAX0W
	pm3ZuGdHwRc26zMG73a3vlj5onbxA+YP5H7WPEPPL1JwOM+QLL9tEFQxkq+aSAmPIRT
	HRYi53By0qf4aMV2spXDthoTEX2aHYZ+mSlmnN6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656925612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vPHQvZGE6iv2OwH0bx7Y7kCjqbY+lN2dZpvnCORr56A=;
	b=FOaDNy6RXHEXnboJVWEIcnkRjpHo6OWVNb4lMmhXN7Bn5m122tHn8+Rz37iv1u20
	Bk7wYglFS77pCGkmOvThuf4Ie0ngtY5z4eFGkVQcQmKNE/Lt3+t7yLu68duINLO4Lx7
	JE/pibaXD6dGOXhGub15atTPfsm+zlVhO9Uwwe4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c87668f8-d66a3831-8810-4461-8c29-5c523ecb105e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f401cd5b05ae1996c500536c07770bbbd9c828e6aa1c16c58b528b7289852f8
Date: Mon, 4 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656925612
