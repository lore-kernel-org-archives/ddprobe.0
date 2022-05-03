Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2923917E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651563538;
	h=To:Subject:From:Message-Id:Date;
	bh=EsRkAZCUQBsjYTlKx3dqaeQrzSQRVGtG4jZHcKrOOV0=;
	b=g6oVGa6J36/V37AQKA3tbwMzV7yTqWIX7MGlkzRzmgDflLLJXTqx8/+M4XyRchLJ
	aW39mB+5WHOB6tFZ587g7Fuyg7wjjvbYSHnixXpd2tqCNE6vGTZFJSc1Q19JIfFPjlT
	j2/73Lm5lFZ3hbKp4wp15pmLz9KGRP3LIpDg80ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651563538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EsRkAZCUQBsjYTlKx3dqaeQrzSQRVGtG4jZHcKrOOV0=;
	b=e+lxEAK8yi+IUu1TwZzwi0H8ENvRqymlF1SuwcsaEoydZc1zczUueeF2IlIWBj1p
	G1ZareQyKZVL+TagijCjkYGxWH9Nzo/iZF8OAwvTPU+4yboSITn30uac2eyq4S2TwLa
	LgmeVIwa4+Gtxmh8cgd2djiNVv97B47GwZpKHbdY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088dba770-bf2bafc5-344f-4534-8618-2c6ead03af5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b9a15bb394c4a2fda62a82b222597bbe474b5caa595dcc9b9aba8124615d2e
Date: Tue, 3 May 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651563538
