Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF72185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 16:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650471658;
	h=To:Subject:From:Message-Id:Date;
	bh=ULtWYUUHL+hmi5thWsSDhdrgHtBgECvQp3SwT4uxuM4=;
	b=YCvReLutp4qRs3dVsxEobu16y5q0IRQtQgfRZEeRwt8iHgR+EB/4ZKp9dZPJZr3M
	s8Gg/JlyIOqM3mVSnlM+XgKvV0PyGX5EasTQ8wr8jNZxCiT8Wnb49V9wuy2afPRjEPH
	ZO5quu7iXiqYK/C+AZ6Ij/WakeH4Rl0fH+oW48nY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650471658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULtWYUUHL+hmi5thWsSDhdrgHtBgECvQp3SwT4uxuM4=;
	b=ddQLe+txmyiigukaEIpU5z67xDhQFBZ1hxvjjEnRy5l5J/Z5n9ney+IYL7esbC/w
	WIWxae4oKWipGZ51Yhq0+1F5g0QN1+udLD3moAKygjr57PItNzupdT/PnY4llwvk39O
	tbSWiZGYHGxfABzo3c3UrrG+9M/o79l50lOw/SGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047c6e38c-aa223bad-cee2-4313-b64e-ca01e86efd5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63fd68f81aab7b5de1b239a99dcebbd3e4563c5de446200066b4ab1afbbfa6d1
Date: Wed, 20 Apr 2022 16:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650471658
