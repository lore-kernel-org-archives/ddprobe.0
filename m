Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056B4184
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 10:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653129299;
	h=To:Subject:From:Message-Id:Date;
	bh=RjJqR88+o9XZch3QVhnOSFe+ibq7UogcAzqzkA9K6BE=;
	b=IJc4aC1kfo9nTJ+y162Hj04aAPzg3E+EW7Iqf+bqBsNdrPON+g6QA0Pd6aEmRlae
	ihdAU6X9edE4GHJBm0iTiQh/1ng9diSNxT961g7s/rSqYaXejSxxNKu21aS83ObnxLR
	Xadpq/MVOSuJUcIFMpaccGp6/iYCdo85/kqUCJf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653129299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RjJqR88+o9XZch3QVhnOSFe+ibq7UogcAzqzkA9K6BE=;
	b=A1wZEXh9WP6GiRRdhT6HBMOL35EBuwJSBlLmgaTx5C6pWvSJT75SBzS6ilL/d9SM
	UmKlEiiR7tLdvgXhiwy7njNHcw88bIdA/h0DRojyrNKaxR8XxomHJw1FSVZVu14ZgNP
	eyN7EYo8KVmFxb+JeM6YT4NLwRodxWhEh9njQRgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e62f4568-8ca72915-c9d3-44fe-ab54-dcf4e3eb1557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fedc97f44292a7a23a6e2fa3eab5f519e26ceaf4499370c4235bf5d1f0fb24d8
Date: Sat, 21 May 2022 10:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653129299
