Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1911117CA
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 04:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649996698;
	h=To:Subject:From:Message-Id:Date;
	bh=kHTQFeA9o9igBmGuObQCt4c0RR5wGLqlv4jU3cbhGi8=;
	b=XZwd/9ovksMpHdh6EoV3i1edjUIvXIuAM/HRhjdti7x9JKAdhpJG+VrsyHnqHGs+
	gVvTHiRJRByybWQlxHf0Xz77/DZAIWU5Hs3diEFygmvRwb1ma9n0tuugvKhdk7A8luz
	hx6w8VoVVmXG09B1oNaIYKG0IRSNYRnXW1vGrm9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649996698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kHTQFeA9o9igBmGuObQCt4c0RR5wGLqlv4jU3cbhGi8=;
	b=WqhDv+vv+XZdqSpjgDjh7jWuh/mZI+P5XFlyiUyXZb79Bv0+azvP7gnYnzDFSwQz
	GYO3iTSYPTZ6yKdQuWK+UHCOE0XbwKJ1bD8949sGYT/3sVM5uOr8bAfRHoGznukUCNH
	oag/tL0lg2W1nx+8cYlEz5hlHDaXeDHLRsmxYZDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b7792c2-b3793a81-76f4-4e62-b0bf-6f8b8cdca5ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c70103d15f7c883421b9cd891bfcdae1a8d63954214f704c50fd43c508a988f5
Date: Fri, 15 Apr 2022 04:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649996698
