Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238FD10E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658222212;
	h=To:Subject:From:Message-Id:Date;
	bh=EDJcj/IBgbifv5rxBdFZhiUEdaPy9hkCSDctE3ZPKR8=;
	b=BqX2JHYDiH7XgwaUYwiA5lR5uJdPDt9Jv+MXVXPahUifzIMnjCZ4oAiczkxhQ5Ng
	3niXdlinBXGmlGtLA12x8c0t80Ka2Ap7LGFV6Eolg+KTzFD/fKV2XzULI2AZ2jkpQEF
	ehEW0yecdc1fFsoo2IbZK1D2e0OYybkGArURIZVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658222212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EDJcj/IBgbifv5rxBdFZhiUEdaPy9hkCSDctE3ZPKR8=;
	b=DMsmtpuJw6MlGROqusCAc2gQnga1K+eINC9846Us/IGrqQjO/gSVN7D5F1WP9mvm
	ffr5s6M6sUeNhmnhqL9OC2GY5JpfJIBDiF0gZgdIIJW9ArVRjuHHCuFbG09F24ayMZb
	t9k4p6PN0I5BrOs/gWL5z7+Lzwa8+oFe11U+0PKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215bef4fb-5e7ff4ac-fe77-4ed6-8705-e06716fe8697-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed0cf9b2dc41f79b3989e66b3a99790bd95a85711dad26e8609fc90b2df17e93
Date: Tue, 19 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658222212
