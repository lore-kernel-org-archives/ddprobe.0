Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8261423AA
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658477212;
	h=To:Subject:From:Message-Id:Date;
	bh=EgxZi+RH004TQnTeuO8jgrtZMc7zP6BEX8P8iXGW+Ns=;
	b=JWPAU/ybyOYFBmv0hJifASdJP5LWKeRzNe815vUEX9N5O8ppoSNNLgBGV2XZXu97
	n1nnwgdTfBnAa0v4xZxl+mtcXNm+VMLvIEiUpfNxEiqz/ImzmSznIkvNjfhZtwmQIn9
	sMLke9AeNkymc8wLNgZjmiKxw3T0pmsMoJ4dBR/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658477212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EgxZi+RH004TQnTeuO8jgrtZMc7zP6BEX8P8iXGW+Ns=;
	b=MtNx7OtIroebBM/crJsBu4JKK3PxS+6guX/AoV7xGtunXnzKMhDQSnY+2v9/soc2
	CeMlM6A2j8/b9nwdHqCSFHJsZznSDwm1eOkRGGRiDXG9CEaamvbhJgCWa2tBifMMBtC
	aL3EBqtpCIlzgaa3i8G/n+CkJ3HmwUrnjKS4unJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224f1f243-6c46be31-b9af-4714-b218-95dd6db5ac4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8b4ffa5ac12cf6b38cd6547c324a51baa8c3731b48c1b6d5924e4f687d3f55d
Date: Fri, 22 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658477212
