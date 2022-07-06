Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C8F19B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657125412;
	h=To:Subject:From:Message-Id:Date;
	bh=WNQg27HxyiBE61Ntn56LOONYmzv84XAa3XTErWNEd5Q=;
	b=I9WEQmd+D98peNuEokagZ2BOFkikDsTRqXOe/mtnEkYxtwtA2N9cjYGmOUk/gkTV
	K9AQwXvJz+uv8uB9UewWbPjRYJMUjUhEZBasym4LqGhHak9ZWRI0pAS5pTAd/ETNrqY
	QKjD+OkQURRHNYa0NgKV62eTptXMs5rZ4izqWRS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657125412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WNQg27HxyiBE61Ntn56LOONYmzv84XAa3XTErWNEd5Q=;
	b=bCHvj/PBMlp85ektun55rN6+8424VKHKc+ngT716MP47c7FdyPwcZJovrnWoc+7t
	L5hTi0SP9bpE4kmf/RHEnf6bHsupVPkUXxwHt5F/vOecftVlRkbUBqkPC6enyqgREYb
	sCZYakafcbLpZ1imT/LfTVzlZp9tuNjTemlJXtW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d45f1dd2-cc3a8716-b523-4418-afa2-0844c21f9423-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70f689b3fdeb899e31c90e085052ca9abeee183e8f8e9b737db8f97524ceb74c
Date: Wed, 6 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657125412
