Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B447B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 22:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655676599;
	h=To:Subject:From:Message-Id:Date;
	bh=0D1aFjwfNKru3q3Rz/YZ7JoQu0QzQnyOJE9+3lM+scg=;
	b=RaXIFTDzJ3iheSVLe3HknPZsi2qKa6f2/CLZiLDvt1y9YJyZK+RXo6VXDdNTEG7U
	k3M+DtkQV7DM/mQUn4nLw+iBIuQlTduUjvNVhGq6DfZlO2a0H9mu2W8wlv4EGOLY+fX
	1rQv8OGjREYMyfJalsuOtjPl6tqMUXd/hyI1b3L0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655676599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0D1aFjwfNKru3q3Rz/YZ7JoQu0QzQnyOJE9+3lM+scg=;
	b=ZX4VrpUQw4gYoDU9MXGN+2VRT1rhjtQLm5kCCWnRGNmXuMBASqh32X7Cr+wLV/FE
	PrDg53Kg2TxLQpVKIAgW2xZlk2vDyTs9mkhE8r8gldhKPJPSk7vPJGS7+ReHEXU5Eza
	+TYckkYmEUwp/hnyzPOxILl7r5kdVT9m+1DWtLEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e03fbcb-41e4bbe9-ad1d-4b98-bff7-0b8e16270e8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d688ddc670f9599cbd6da5c461d7aec013a243b891a09b045424dfa8521118b6
Date: Sun, 19 Jun 2022 22:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655676598
