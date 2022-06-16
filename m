Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7634C7D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 18:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655402519;
	h=To:Subject:From:Message-Id:Date;
	bh=s4bDtcSYxgNckwSdUGUh8jC9hldSuW173EnAElNIMSg=;
	b=MLz3HSDlhtD0EM9S7UjhZK04dTYt4KnxHT3wDEugObQ7St9mi0Te36m4Z4PHpT4i
	uZYFHd/tX5UslKxAJojAZKGJ3X6kQfVO3VxXR7hkVL5lvwGqnF8KjuUu9qHWG620CLY
	qFM2vu6hCrO/HWH8yVov75hgzmj4dnhksJerSy5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655402519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s4bDtcSYxgNckwSdUGUh8jC9hldSuW173EnAElNIMSg=;
	b=MF1r87Hv6Ksje0EqgCKC4AR+rjx2OqNJag9nBSV9KuEU9X8PFckiTeJEd+BoEQp2
	9FCjcsmBmB1eq+wMiDdM+UO+ukQCYN2yXbybr7hPoJUFyOdNiq7DoeqDUa/SZ0Nsy9o
	F3NCnaOrw+gYn6MdnFauArG3x24Qr1MXtkQQdll8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816daddac3-b7e44aad-8e10-4206-bfaf-d97cd6fdb1ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c027303b20d331114663be72f17588a394fd9697ce8c3681d258b0988a83b22
Date: Thu, 16 Jun 2022 18:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655402519
