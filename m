Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FBC17C9
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660959652;
	h=To:Subject:From:Message-Id:Date;
	bh=siAgFUI71B+pAO4pz8UrynyY1p+GTB134QpopkM/gE0=;
	b=WwZIuC+lNMSH56z+DD9jlENRkpx4QOMHQaYfDaLx5bBDQq1sRBe0kfDGwRRimcb+
	iwgOPP9e1oeNvHA21PWFkSjvBq5DkZ6goMOnbZI6XZHzPMe4qZOxx36Tw8ntjoStiAa
	RnrWsMzlq/CI+fXe6UdYNWBBkSNzeSB7+7u7A6aU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660959652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=siAgFUI71B+pAO4pz8UrynyY1p+GTB134QpopkM/gE0=;
	b=QvyHZPG+g9f4arlamN/TL/3+JA8mxFFmGUBE1oN4TQiNZUjPWTyMTx1zdiHyDf2z
	URqlWkjAe9+RHJBCtnFiiTwBRVqa7D42hW7IBsZo2LipfVxDWQmenrQdA7eqOHaj9JK
	w6o2iKmiLJ88R3NyTL9eaANkrMGbD/msDP44GQ+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8e8fab0-def67d8b-dcd0-44b0-bc96-6436e41def57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8280dfde5076caa2f9a4149f0c18060cde0d801b3583e55e07a290e8d8baae52
Date: Sat, 20 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660959652
