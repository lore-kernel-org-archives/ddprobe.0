Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6457738F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647459985;
	h=To:Subject:From:Message-Id:Date;
	bh=9NNhHJ02CeACVqD0Kg/u0U37asRmJxPIQ0xfO7qT8yU=;
	b=RUHZLa1/FTLPTkX6VO+qWiCvq+2orkx5r95ptnCzYazh9+Hyhfl1xT17LazTEzp7
	grv7tcNfkiUSJqWlwIi58+2kZbo/cuSzzu2SF+muEj9Hzqlze6CZfTwP0JZ49B2B1WV
	X9cFhkFqZhRRm6ZemaKrdE0ygGVyO92l3drsW+lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647459985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9NNhHJ02CeACVqD0Kg/u0U37asRmJxPIQ0xfO7qT8yU=;
	b=NT8ujQ0P/ioavCV+l+xQfKnLc1oxRF/wxMFEbugPO06jbUKC+0nNiHyO1mZQUqcD
	WVxK8p1n211X6Rji8WrjTBYqiIowblfOCuhyTryJOuLvCIma9CDjonv6j72ukmheyrn
	bgRXJlkB2Gdcwv7XYHzF5eXwR6KtxG6iA0tcvlY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f944465ca-0d37444e-c2c4-49b3-81b5-0e04cf0fd7be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90cda7c859ffa1fa76aaa9e8b6ad5c3a1e5bf4f4577ccccba8392859b0a01270
Date: Wed, 16 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647459984
