Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D857A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 18:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654886339;
	h=To:Subject:From:Message-Id:Date;
	bh=fhnHuIfYDABJR7VVTBzUOdMLFOdUNBoBdNUGR0QOCnU=;
	b=PjQt2otLy4MI0m4MKL0JJc28OdYdKg6zcQvi9bb+K47IRgs8/ILxiNXdr94aCRyo
	1PuggPGwS8ZaYQEkjCmlM1YrRYgxTapldfVsMQEZ6uEaMhWm8E02m8+FQb4mDNDbovb
	7SG7jcs1cDBxpMe/HNM/WU49B/G0OUZMkh9julzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654886339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fhnHuIfYDABJR7VVTBzUOdMLFOdUNBoBdNUGR0QOCnU=;
	b=L6GhL4fTrBi0o6ZAQRxbO8Ktm1NhpNopr/daS8mvIxtPsYo164qxAMnWllOVU/zt
	08dcXZFL0bO4S/wx5RL24uVPzTEoTv3T0Aot8XyXx9cK3W35cXTQjsheVTL5pxXNnYA
	GUz+WDvf5BcVMicteFn7xitGPv7soaa1dYNGwPkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ee992d9-ac65a59f-e435-4322-ad8a-38214b6eeca4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 573d08cc5d114732f0e90beb0bb53c6a35878ad1c82608e58c316dbbcddad578
Date: Fri, 10 Jun 2022 18:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654886339
