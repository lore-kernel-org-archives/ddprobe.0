Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EB37A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 02:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650854098;
	h=To:Subject:From:Message-Id:Date;
	bh=5wtKwKNQ2IJDHQZFC6rfCLrCCaFn0yeQX3UvgZFjh34=;
	b=L4BaCArFaXindALXzOG9t1g+uV1q8Lp1GJZMYq5QrLpQKpTFeOgc6KNxAj+qw/Hs
	5Jse61iQMQpZoS+6LxafIuqCM8dB509bo6M0YoXBioY1Y93Ge7IDI5Eh87n2TsIFmfJ
	DIJdeUlI4Alv4WK7JQooz1gfZPKUoGYdj04TaR1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650854098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5wtKwKNQ2IJDHQZFC6rfCLrCCaFn0yeQX3UvgZFjh34=;
	b=LAWV4lT+uGSgDpqJUXYuP/UwCCTkFq5E70J9ly3U9dH7tQ4RqbH+rUxp0P9DeBns
	nFqQSW9qIDmqPwvA7oLzmePUkOvtKW47M7zJsne4Ib/FJdQ4xCYgMHf6i3EuZpCXCZ8
	7Rx/WhyrXKMaV/JMtGcOUT9zrhO5go944cNX6QfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805e927565-322a0bcf-5a26-417d-be2a-31fedd2d1695-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c24848f9ef48ba7d0cdc8b8af1608d269ff216bdf2c06fb8e4a963ee5add503
Date: Mon, 25 Apr 2022 02:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650854098
