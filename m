Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5421FDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656044212;
	h=To:Subject:From:Message-Id:Date;
	bh=nm4mKyDiI87CWXiH654HMa4XzV7MhCMzZq4S0RinPzQ=;
	b=B+mEOh0ULRfzFtTUjHe/y+FzexjuNzhKQQ58jUMcT5DMN/JNVZLdqXw856ebJH5s
	KQmZRgfl2L2wK08jZQ6nu7pEM/hgvXim8Ltk1g15G/N6aE2N7hgN/WxO2LFH37k4tIE
	XZU3yo75dU8Or9pLz28Uv3nLyjpdaJG2ZsCjMbTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656044212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nm4mKyDiI87CWXiH654HMa4XzV7MhCMzZq4S0RinPzQ=;
	b=S/PvxWEKAzs9bYE3iZ7X95/Zz2Gjsp8eh7DExS4zj8eIkUqfRJAJdDIGVqXY8fBp
	kk7EpWgURreKaoP/6keutCJFf8w82L4UV4g+3ScrXLxhWm6RZ3b08/ZnNmbe0hti62V
	uzm3b1LIVc0NdvUIYnMdt7eAsAod9ga3DP9Jwkdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193ed5054-5f26a74d-2c84-41fa-8bf0-7b122ccac76f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60efbfced94d1842e6c1e177b8fb9b7d1901c7d7dce3bba91028360d7f17f905
Date: Fri, 24 Jun 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656044212
