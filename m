Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5011FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 19:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653679559;
	h=To:Subject:From:Message-Id:Date;
	bh=+noaKXdErv5EVRtbtse1zuTshYD3EigCMPHRfyQbUnk=;
	b=b4sXdKuaqEAD9oD9+iLVZMwRza7NJOqyYQgGQghhcSxvGQTZNKrhdm8VT/9Jilla
	fGprbek/zK9T7Y+a6D8dCYazJBP7o0TtYgyaEuoLZ2tTxmJUxJnh3p2QJUfNN963xws
	ktRBAYZlNcMN5H6279tCovKblkZznh13g6gQ2WbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653679559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+noaKXdErv5EVRtbtse1zuTshYD3EigCMPHRfyQbUnk=;
	b=KtlPqkr/0Kf4o/ZFrIoXVghfC0uzHB5nDc6qPLMHZKJ7+r0QaO42fB4lZVidsof5
	VtV1olgfho22244mF81K85yop61M/9aQzp7B0B6IL3dK1wY+Bc0H7MhWAD7l61k+/wO
	P1Fq2K02ypx7qa9ZGACynxKyc6XDQdA6Kyf3fyds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106fb9262-31363bd9-34d5-4e5b-ab71-e7637a1510f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6290be9eaef85638d3182ddb7fe82117fbaab22a856f7d147fbe1544debaf65
Date: Fri, 27 May 2022 19:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653679559
