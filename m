Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BD520E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660189853;
	h=To:Subject:From:Message-Id:Date;
	bh=6k+DEwpgDfypXgbb0t/KqntA92Qxcyse1ARYaBlS5FY=;
	b=VZ0hVAlkdi7cIzCrujgfnGH4dH+TWsLShwDHGqf4tv8J3ZpLmEbJDeRzuh7XZSX8
	iYZy9O0tFP8HSqjFedzUjrTCQCw9GnGNb4US3B7Rw+1uajEWptCl7Jed8xJa1DFOaNE
	NFYJns1juuQyBrvm174HH3J2wIKkw2NbN03yWRAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660189853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6k+DEwpgDfypXgbb0t/KqntA92Qxcyse1ARYaBlS5FY=;
	b=GyEk7mP4t5hmc7jSA265xZNCgxqYhFg0wu0AcSkhtYygLImbL9qPA+zmcR7b3Qb8
	dLeim/bGblMN1at0p1hOdafaKa43gxlUopOgDmBK48D/T5ukl9Z0ZVbb9QAeMxZHZaI
	2fbEUR3lPAJDEON5Fn12kRbj0tMDFcPOtT6GQSGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b06c38c-3119e16c-0669-489b-aa0f-de561ca12870-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd03aabd95acf0fe10e9fe15bac5f0a56a4c3d8de1a9819491ec8d2167405034
Date: Thu, 11 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660189852
