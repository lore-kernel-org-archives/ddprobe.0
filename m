Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB21A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 03:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655004899;
	h=To:Subject:From:Message-Id:Date;
	bh=xvzrxhsDXDIQNP0W0ZzFObIbjO+ucDuM/IdfP/aYlCY=;
	b=jzSS36QiB8y9TT225BaHRQ96HrlEqAn1p04JPf2uuQj5LFp7wBxG6FGhQjvHJpQm
	LfaN02a6B0DVbVEmaMiXvuvECmHvH19tJZVGfzM/k6k9Zu6RReoKHWLlotQmX7AHosU
	kujYrrNenJJCURoYWlhrLfqm5UlCSDts8Psgb0AU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655004899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xvzrxhsDXDIQNP0W0ZzFObIbjO+ucDuM/IdfP/aYlCY=;
	b=CCIVavvQo52iiU3YwPayjrWWj3S+RpTQH237UidYVj5ZrGDwijSukED/Am1/fqiK
	xmjxbsyvcN0YOfbX+symqik43EqeprCjzmYAF6aY2n7orPIqokiNOy7EFWd5eShcj7U
	T93Zb25bK3s2jGwcGpKjGCKItFgD9msWIUakA2Ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155faa802-52c2055c-b2b5-4b40-8470-b2254ae5064f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a1b46ed028680e53b18bef46a3c4f5d7984e9da119e14506cf57d0b8deb4370
Date: Sun, 12 Jun 2022 03:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655004899
