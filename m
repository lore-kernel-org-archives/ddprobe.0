Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FFD23C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660806652;
	h=To:Subject:From:Message-Id:Date;
	bh=9YM5jfwRSBH4nUymD5KmrOwKcA7pFxbIg6b//hRENzA=;
	b=OvOzGyFyVAo+JpbMfUVrfOUR7dY69WspPAs+ClUqzIEdKg2UiTc+jll6x4mw/v6K
	JzisGN9VElf9k3Pw8uxJAr6+/7xW1IvEP7AKjpQ3RGGuLNshczK17JIRs7R3LCT7epW
	27PaeRk56okUAbAKCRqjKLG+TaZ45+M40n59E3As=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660806652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9YM5jfwRSBH4nUymD5KmrOwKcA7pFxbIg6b//hRENzA=;
	b=IgUAK94zef7fEOC8bbnkQHnOyBUSLVylB5H8FCLXBT4mM7Db5gt3khtPhzapuH3/
	5xeEzLG7m1sQMcRa2LGMUx9wCwVDrhbgR4nt+H3O93ZcRzZcZslP8yz0guaLM2OLDZw
	FsuIfrlr+HOmY3hZG/d+k/XseR3yu/pFblnzJbIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182afca62d8-9976b66c-5706-4c4e-aed3-376e185cd35c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 207c42d72845955b97204fe1d4f0cda7c70b7412c757f818c472fbc9ca61342c
Date: Thu, 18 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660806652
