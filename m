Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128F0A32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 05:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655788079;
	h=To:Subject:From:Message-Id:Date;
	bh=sQX8C1SanpHHd4zPE/ffIcb7Kc/bmyzNLTWDKG+jBLs=;
	b=YeRFHeDHcM6FYBcHPRJffDWcB9X4tWM2XYdE5ObaWg1HQr+HMl5PkYsEZUNML0ia
	RSZpSxQcJT+fKhkhi3yUWGmcpP6L3LD+UAo+x6PQIAopuD5qs76hvFavD5REKU/w2/Q
	nXnI4rvove+YCn2X3tMnmcvLs9vsF034d/e3zupk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655788079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQX8C1SanpHHd4zPE/ffIcb7Kc/bmyzNLTWDKG+jBLs=;
	b=Pfv/MQrQtI8jSV5N+pQzPBc6yv5/6hcW6+MpbGUoftgtW52wTmqxbbdzQcFXo09z
	C7ofjr8fo3ekMtkvrAUZ8gFWgsifkIGUcZeFtNkkSIEEQjk9ljabUNZrX8cc1Hd6I1o
	maKLGV2+O3Y0bqwj+hdoFttRMIfgCYBp0VXW3/S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184a908de-6050966c-f192-47df-945c-d299827a8cb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d477f2977aed40c9adc89751c84b623f41cc49bf6423d65855a38782538351df
Date: Tue, 21 Jun 2022 05:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655788079
