Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8907C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 07:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654758419;
	h=To:Subject:From:Message-Id:Date;
	bh=yEuUypioWgbsCVzJTrzVjSWZDv2rxnYwoQ1SQysixY4=;
	b=aVnSriD6ZkaSK7ea6zuLYbuF66RHAnwGWVuFv+wp1NZEhowXJrDWiwFGypv2MS+1
	7d+2udqoa8HvV/5l8MiNxLcuNMhra6TfufdW80l3szr1yLiDms4DAbEWiCvI9eZv0lh
	wkim+cJOERq1Y9zOozherNMzVseEYic6PLCs6Cug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654758419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yEuUypioWgbsCVzJTrzVjSWZDv2rxnYwoQ1SQysixY4=;
	b=Rb8xLx2WszaH6/E5ofCXZlHg6QbTQtbcR1UacB7WJ1FjpTn81L+1k5Gehnbv6Tju
	Buasm3Pg3Y6Hu+ZL+lLmIc7RmuZX2qzBbkYInWph62k7Jzp8Mku+13nMjoaubiokZRU
	Ca4wKdGiqafHzw2+pEMUyXvzDK/GR9KgRjL6/8PA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814749ab43-d3343d78-793e-44fe-be67-09d52132dcb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f81898bb4f04fbd627520a658bc53839dd93b8b115399612481827a67ab1c578
Date: Thu, 9 Jun 2022 07:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654758419
