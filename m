Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EF346BA
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 10:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651312918;
	h=To:Subject:From:Message-Id:Date;
	bh=zTqMStrvaxTQp7PgpOX6NtIyAltP9Tt61+6vvQEhzao=;
	b=FMHZUE183G1+Cnu4WgmP/61bj1D4wUBMsUZsbkk2lJf8gD2GbM8744x/v8SrIf5X
	vwT/tO13v+WWXw7B/2QDrn0j2HwTCoMeC1TOKi8817cf91Fm2893zLL93kxuF6Pn8xM
	q4Kcy8lpjRJGBTq8cJc2c+2zYc/sfQDFvax7pPPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651312918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zTqMStrvaxTQp7PgpOX6NtIyAltP9Tt61+6vvQEhzao=;
	b=A/2pMQT2hf6aSByHITd6qUmWByNtQDbB7fyHJSJM/q98d5TRkkurtC4ENDOV6NYZ
	txuSPg9Qyy5VGdgUqlnKeozxFdyJPalG0Pc46edaNmDlQ0HS4f50vXhRIX7eE3Qa83O
	Y7IQLKL3hzK3+rh1TptjTYoZwO1VZVPC7VFsVCrA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079eb7ec9-943456b2-df2c-49d1-aec5-c772c924f8d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d257b39216f93c3b2b5fb6af8b47b16eec9bd68fa42d54d5d9efd5d4b37c8f97
Date: Sat, 30 Apr 2022 10:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651312918
