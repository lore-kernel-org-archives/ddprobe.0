Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2C62566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658944852;
	h=To:Subject:From:Message-Id:Date;
	bh=XclbbuQ64o7AtIEaEJHLYOpgNmOoVAXVfNEm2S3G/U4=;
	b=JCD0fR9eEIzEaGRp/UneawwASBMPS1+foToOla3FHjMQ4dMjRllheMT+WbvDWU6M
	vL2HEXNQMaDFKr5j2hTGNMuywtnpiofU+XyX+08vRvhNxDfXOd/xn8ZZ/MBkVrYaxsg
	x8UtsQwpx7uaQr7gPUxlclCtWc+OZgrssbfdXvCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658944852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XclbbuQ64o7AtIEaEJHLYOpgNmOoVAXVfNEm2S3G/U4=;
	b=U5Ek6lJ7q+W1JOSAuzCIT0IYv/PJgdz7ymHnEieErnpGJWUVHl/eHwsZXwY9LfOA
	I4UOCnbvHbrP0WUEGk1gJmEvF3n8jwOF7whqJM1aNKLY/DuGhcUg0dKFHvIlNC+7h7G
	ByUy6+PWGKYXi4G/eUoZqLj8EBUXrk7l7KXKjfZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240d19238-a27a28e3-2130-4184-ada3-f5e12e63b80a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54d25719996aee734daf6a4d30dd2e0bbe023ae4767104059bbe6f1c193baeec
Date: Wed, 27 Jul 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658944852
