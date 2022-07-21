Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE3A6AB3
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658441212;
	h=To:Subject:From:Message-Id:Date;
	bh=fZDudTfDZVNUADaCws/VHgs0D28LbelGGtVtR0Tg6kc=;
	b=BHOu0nIgRr5LWTL9ptfO+517KCXSbhHdzFs/bcsDfWUY36eQBwGXc4ip2YSl3so7
	spMmlaXawkNC2NLNcSh1JEK0EJPAviK0a53Cr0bqudwGaI1Htsu7XSPFt0cw3kpE1Jo
	zEPStT4uht07/4zig+HfbyKCZFJUl/AVvUDwtGjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658441212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fZDudTfDZVNUADaCws/VHgs0D28LbelGGtVtR0Tg6kc=;
	b=g2cjuT8IonaUDvDtPiXdxfbJ7kyYBFs21x0hV8W7RpXw4ZZbYDeIXLdr48caJZzc
	hBhQVRwh2HP+Rq4DJt4/APmxgRYbYboDUWP68X7hLsISi3CQJuHoBqxZTzR9pIwlVGZ
	lAiPfneAn8h433oz91N1BRmFOTG5nnMCANncA0oo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222cca1b9-351395e0-8570-41d1-9c3c-e1d9e2e1f50f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55da082882344b04af39eb0996f9852b12d4a2beac5552e21bb77b1be13d4328
Date: Thu, 21 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658441212
