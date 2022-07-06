Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161266038
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657070212;
	h=To:Subject:From:Message-Id:Date;
	bh=1wRl/yWvXG8DliiAqIzFc0NnXPgnuDr4pPhwRTO+7ig=;
	b=X1hNXOM71Pqkx/47RsqP9grqF/A2H3HDIf+Av9ft0JjdpKXPVHH0ce5qoYTWLmBD
	Wii0yFw6boeXyW6CmT1wbYp6ibKDLD1TjXgQMz5p3EXzuHO/CZtP/muuD/aS0ixSBpt
	WUCCngsxTzFiw6ur/5Hnc7Tui+qyTWwyv8DjwSqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657070212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1wRl/yWvXG8DliiAqIzFc0NnXPgnuDr4pPhwRTO+7ig=;
	b=j4c7Lyf21+3dkxmHgOoVtJpS5+jbszvd2+BQfmx7dXPLyj+heLUdqH81xFTYCYpZ
	GX2JfZlXu3MvZOQVeltlJDn9XXhXoDl2d1QyonHaHJflwoIiqYp1i+k8p1lv4F5ThT1
	vRpqzadpR+BbrwGf2Uo7nBGRHDMQ/TZBrp0u1B5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d114d4b2-292a3954-8ae6-46c0-9dae-524869ca7b1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 198427e4a6b9ed13e694e443d527d2e28a51af57c776e26f2cd67b3740e6c5c1
Date: Wed, 6 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657070212
