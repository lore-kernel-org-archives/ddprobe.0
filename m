Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280B07E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 14:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652969459;
	h=To:Subject:From:Message-Id:Date;
	bh=tBxn9xdXNuFRXToFJyymE6bqMG8A1cTLNVi4Y0wHXLc=;
	b=MZ9TWer55iWKdsPCjFno9KaHIkE8CgrPt6n7EKvmwHHbC8lZ+W0w2BBpc+l5g8ge
	s+qLf0AhkIUpCqYykVWKnTxcg7L6osVHf8DYwYKa5xsUHH5v7GTw/SgJYSzNuNLlC5q
	m837DAEvaCFSGYg9XkBGjHM1zyqx5vzgtsqW/3f4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652969459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tBxn9xdXNuFRXToFJyymE6bqMG8A1cTLNVi4Y0wHXLc=;
	b=kaqiCrdgHtjHiQgNHJ180VPmYZOkGm8EalhcVrT6A8yqPFnRGPrS22Zo9fN7Ya5+
	+VnQG/WH30ztCVfYeUGia6H0fT+0ef1qss5xFcsV5xeh+fg+c5eijDC/fS5+JjIF2T+
	Fkytv4Clrrt/B2m6+2QZsCA2Iw6m68afkJWvj3QI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dca84e4d-52b5f806-6b0b-4a9a-a700-2a0df55a33ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa3a765b245e5fafca7acd204d75c982002f6f5c97197c5312b6907c67863eda
Date: Thu, 19 May 2022 14:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652969459
