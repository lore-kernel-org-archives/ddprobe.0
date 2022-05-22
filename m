Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFCC210C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 08:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653209339;
	h=To:Subject:From:Message-Id:Date;
	bh=6nFhtNoojPuTPo1Hi/w77+cH2Q4zfQt2j2QGraIXVV0=;
	b=YAKW2RlUsR9qV9FrTaXxocvg0ZXuD5dM30MCH0MhETvPw95hMs7enk0r9TBXoxuX
	jgdnEe2g23vP4HhHZ0FYOKudWOE4SIt0U27Zl4tRiOwSH/ttNeiP8P5FY+9e84ken1g
	0F6ZdsjoBJj1a9hFp5cSuv152qDoPGqedy5ndz+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653209339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6nFhtNoojPuTPo1Hi/w77+cH2Q4zfQt2j2QGraIXVV0=;
	b=ZuQRbgyWJHhGgzIBAjkDW7V43lql/6hb0zG05SJZlt/NVT01zPiFgAQUrbxGqsYJ
	xsGSSy6vrQTjlQO3/g+XfCV0sjk19Gzml1WdiV9rpQTV2hc4bznQkMAHpfeSbW76KBK
	5UQEbbkD9nXSDICmVDcvdKr5N7wzoG0fT0HA4fkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eaf4956b-52c02136-6f69-41e7-8913-1a81196eb741-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a275c2b7d03e63e9a77de73c48985840485a44eddc3810201ab53011c11c82b
Date: Sun, 22 May 2022 08:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653209339
