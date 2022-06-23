Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F95443E0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 06:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655965619;
	h=To:Subject:From:Message-Id:Date;
	bh=5SDCHbwQR6dnAQi/U7GcumXTzr8e9JrKXOtQQSjn3k8=;
	b=PT9GpGBrhNnza+ovo5GJkv75uVSKXhnEP8qZ6kUEHRWrxkWDunYXy8q3LkkpULEy
	vP605DoppEQLn4xOSkxiYnY+Zor07RTomufritwiT9m+JzxoqVn9ec5JfgCJiG62LNc
	Wp4YDPbV7E2EsMGUH9DBKxsnHqMldnHnPOX4Avko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655965619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5SDCHbwQR6dnAQi/U7GcumXTzr8e9JrKXOtQQSjn3k8=;
	b=LISQ0rRqcLttMLg0UwveNyPtrGFqJc+xnDL53W2607K5haUc5mGUGjVA/9ApA9rF
	vnC8GqizgPayOYvzRCc4UKVQu4EeVTD2Ou7QF/SKtqjd6GdYZkB9PhiS2fUKSiQKQzq
	wtLb6nx9kNDvxc2DyLGmSAnxG0ASz7fVVz1RIPh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f3e1425-0059600d-7db4-46e1-a490-3a8698256611-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45a4ad1e885d43ea76569757b26efd55ac6b6455381abe2f78a769b1f29c2782
Date: Thu, 23 Jun 2022 06:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655965619
