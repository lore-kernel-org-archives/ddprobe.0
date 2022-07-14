Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C65D290B
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657787213;
	h=To:Subject:From:Message-Id:Date;
	bh=JPGycbI8KZE4RaiF22a5/sF7cs+Vytjb73LOs6rPXb4=;
	b=dhk5dhvEy4ehkRNaXbNwvDTHXY0Mz3avVCUZsFVJc6vBXY4y60ZdyUyv96OnDhgH
	kzzXDG1kxEtl+zZuqG39CoVrEHM1sJ64/9gNN4PSQJZiw1D//KAI59qg39zGMGYhTcU
	aXzOldFt00Ox0YFUj0c7WBOHmmS6T9Rr3+zyo53U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657787213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JPGycbI8KZE4RaiF22a5/sF7cs+Vytjb73LOs6rPXb4=;
	b=DkHhznInPoicIgZ9W0IvTHkCBABJPMxV6Fgen4bO/fHpegp4iSfM/UH28rdZ36p0
	9BPRFO0NXzsaiz3V/LXD2j+1f763qTOdEhvBvx4ctZHaAqTZPl+jgSaT6L3AlEmhAab
	VZ65lYb/8r4jz0XIGaxW3gUs8Vz3sktNWBK925B8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbd161fb-893f4da4-8320-4cb0-a4d8-8d57523bd8b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb347f24d1d8d4dbb8a4aa27f42ddb739bd9a577ece5e05c5576623bf8a8aafa
Date: Thu, 14 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657787212
