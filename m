Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E2A161
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648486078;
	h=To:Subject:From:Message-Id:Date;
	bh=x+QRNRezCcJTg0yNsYSE6iI5IDN5YMHKm7g9Sdnp2YE=;
	b=kPIJzmcLwjNIIGucHG7zhwnTPUK2DQZDF1zvPh+KBnvrgec6mDGrQtpK8jHmW/UV
	XRYEy8WyCYKporxfFSxal+2jL2yovKGtlgZn8OOHajHLcBIKjmlBJskQ2XCLB1JeAHR
	jEHyaVg+VM8H1oQqOJdT6zXGavr9uezaEEgzI03s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648486078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+QRNRezCcJTg0yNsYSE6iI5IDN5YMHKm7g9Sdnp2YE=;
	b=heS6XkZ2Mdg42iBaGWqj5QJ+5KQfROYoivrAXJzWwkJ9Qp8AQu9iK5yLZulAOn2k
	P7KLYw8AsEiBQ5h52rv3SWv5qIreUBoFQXHiwkoxvXjPzCd0KIaNdbkgnsUMnU6KB4K
	TJHrPUXRlLS4oxbbCF4ZjGzlXMepoNaUpkha97EU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd16d576d-397e1571-4323-49ac-9a61-6b27f11eebfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fbb9d13aa7840d2e66248b6536bf46ff73652ed1ecef98bfe9791559b37c504
Date: Mon, 28 Mar 2022 16:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648486078
