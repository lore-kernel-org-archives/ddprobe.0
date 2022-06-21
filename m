Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F5E7F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 00:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655772839;
	h=To:Subject:From:Message-Id:Date;
	bh=xTv4+Jq/XkmE5dyLt2+3ax78bPiE1SM9gtmF0i3DQC0=;
	b=TYeDv/8EKdefyG1H0fiPV9QhV1RvPdI0Et/vF+EtlhD23FDTurMM2CCdR7T91YKl
	zGPgiy6d8BGJOzgALm+ifVmzI5qoBzVkLD11XCyX8ptAQodu6vayEQlGPAoA4mRGUfu
	JYCCe8ISrWlp2JWYl83U9TUkymVhMbTLYfF8uG9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655772839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xTv4+Jq/XkmE5dyLt2+3ax78bPiE1SM9gtmF0i3DQC0=;
	b=ZzFI4g8YA8wdZVWj9iY8skDIltZZhdZa+IBgUQog7roXXRgtikF0WR29zJb9z1Cm
	QCo5Zr2tJ7HgFVtMUwVRzvCDk+42WvZtNwDutRqoGiFvIZhtzjXzUu8n3lXni5JcOj9
	RsWmxZWcyEh9uzC3vXrZdb1nd4q9RelG6M5okhFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183c07d5e-5bf9dad4-8df0-4f5e-ba65-b346ceb7932e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5afb16895469fc68c5bb908d81c3cc6f6136bf6e18c26c778846e04f098e175
Date: Tue, 21 Jun 2022 00:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655772839
