Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C137B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661175652;
	h=To:Subject:From:Message-Id:Date;
	bh=oeIUktUxkBk7q6julkOwxAD36XNO0R3toCuI8YSUDw0=;
	b=L1vojINB3XrjWs1hTIks3ADb28RxESLluhhCQjMHjbyZX8/P5jcNj58MjJlM0TLM
	qZQKxCdP4GI1oV6Jq30irgw1ce0LeiqLNFr4Z9oTtc9jfwhkf6N0BDrO/3JtmZuzoO0
	ud1dRyzCe4MZJwx62yLtH+PNjN1YniHTEcuvfMio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661175652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeIUktUxkBk7q6julkOwxAD36XNO0R3toCuI8YSUDw0=;
	b=YddtS4Iyy8VcKgU1Kt3Nt5wfawiyuyCI3qaOOd9idzSWmMSjWJZ+HveC/f5Pa6us
	XMlAqTpPcG3F+nBmweh+KfqcPIHQHdzC89G5bgQG13MTnnjO1CuP667wWgod6q57vhX
	v8wpeqL54BKUb+iH2IBBB9NOPboAncXZLPzOm+1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5c8e0cb-5cfc07b1-af74-4a9f-91b5-432427897ec7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50c0fe3f757cfa8854c2b27b53a33aa383833d5a1311fbb063bb594b4dd402f5
Date: Mon, 22 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661175652
