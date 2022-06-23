Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414C81FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655993212;
	h=To:Subject:From:Message-Id:Date;
	bh=U/zz2josy0JyOyS0uF5ANv6egMdO6Hu9V9dd2CoeLIE=;
	b=OcJe0yL0y8sGtMZgY7+VQT6F7kHRrrb1rU1fNtzxqHcBkw9yToFufRw5HUf84Jcu
	TEvuGk83Ps88jQOexYLpNnDfr2qRkmQcBp81rIj3reN1kofnt1JEvYToW/QsnhQ+Anv
	Xa/U2d87XLqJvQVgI8vDe8bEug5qMUWAt1n5nQJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655993212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/zz2josy0JyOyS0uF5ANv6egMdO6Hu9V9dd2CoeLIE=;
	b=L0k6ccFOF2prq8Z2EfSayMA30KOiPVlLg3/A5NgnDDhJXNoaMBDDzn4yKloeDNcD
	s0eCLlZ/ZMdLL9I+eugoBaayF0kAA+GuXTLbSZpBw/kwZV9QfFVFsuDCEvhk7Ck0V3L
	eNv2Epi5qeuHPxz5BaM7nFoduQBuLS+Mzv1P552I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190e31dbf-29f939a0-bd12-4cd3-825b-087fbc1df372-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad9fbc2252b5aed76b5efc8e6e1207fd2dc1eef0a6875af39937e015f2653ea1
Date: Thu, 23 Jun 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655993212
