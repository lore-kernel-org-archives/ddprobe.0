Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780D27A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645836984;
	h=To:Subject:From:Message-Id:Date;
	bh=o4cau5ZTlFUumA4RTBeb8OWb5Pw3Stt7Bog8kMF+eSk=;
	b=HLMS2U+lC2eTMzWGihIx++B6aVG3paTDGDzafsh+3BnQSPOGM8JXbiTOr05gZmv+
	bWSKxcghRJdyk2/519u0prcNo/RA4h32j6HtJzhYe/wI6RnUwxpW+jaJ5Z/Ag5HUQGw
	zJqqcD8QAYtCK1U1AvhNaoGnJfzpmIKMaNLpqW9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645836984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4cau5ZTlFUumA4RTBeb8OWb5Pw3Stt7Bog8kMF+eSk=;
	b=g4IhtsgCbzmTk15zloGX+Sh1Bq3zouy0yj3TF42dXIFLv3dIm1zsoOv5LBAlXjnx
	JtEWkDlhrdTNYMQTICLxt4RA3omdJnIjCvcpIk1vsfTdnjC1UzjN3GSI5wueJbNsmx7
	cCStD6RzJKs5+6zJYY+eNqrGaCX28a+0XHUXuXcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f338761e9-bc9f1383-7dc4-437a-9659-256bed600cf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61f8f34fd5f330ef14a76f3e7276c4148280ad461425310bb8304646bb3f5f7f
Date: Sat, 26 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645836984
