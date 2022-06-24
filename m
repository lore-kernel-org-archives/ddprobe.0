Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0973E3FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656107212;
	h=To:Subject:From:Message-Id:Date;
	bh=wnuXVU16uRiHYGT72rOnPiucD6UmzH+GLzZFCypo+i0=;
	b=iYjE/6LroP4r/YVnvNL1q+85PZiRfb8OIuD7OPfXj9hSZAiA8bvrefph8/Uy4mjL
	pBQL2mMSOW788M2fKiJ2gt3R4wQ6YlWeAo+G31i6ustsCPP8r/yDmhRLxEHyJUyqDls
	KMkVkdE6onarsGGwMJFPTJWaNT4AuzB8gmH/ldP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656107212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wnuXVU16uRiHYGT72rOnPiucD6UmzH+GLzZFCypo+i0=;
	b=eIX0lIczzzxGkKP1PuZGeaULzYNSkVndSRoAFfbz8uHVdNGKpESH7SudlE+EcAtV
	5q+eq1iHLbC11EXoyuIHNgPm9YtutFlFA4JS9Udh65eJCd8YAtWZmd/qHKSJ/Ab8kiC
	kH9W8nyQqsv1Mp9+YPEEfHiClJhNCp3Oqw/Q+ZZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197ae9df7-6f684c92-e2ed-4fee-abea-d6668d64dd87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3a5b7159d4fa157b03afd73d240aee10f3ef4149dd4c3c071180884d75bc224
Date: Fri, 24 Jun 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656107212
