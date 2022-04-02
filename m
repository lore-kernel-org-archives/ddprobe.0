Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B9A7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 10:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648895698;
	h=To:Subject:From:Message-Id:Date;
	bh=iqheXynsLlUNLH+vimtVhsbfWyGMmk57GX3OxQSkCyA=;
	b=TzeYcckeyBTQR9lDwQEpP8hDfcRO/M/0Rwr3eV/qHIOoxMrb/uJczNIs+by/tvIh
	/hV53tT5zpS5FEkBo9tZz6At8ELJpUFbsfylTyGNVXMElixTUhv49qrkpcBnv9OWP+7
	BGwuLr+2roOasH+H5pXmi55TjypCTgBBd22aDLr0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648895698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iqheXynsLlUNLH+vimtVhsbfWyGMmk57GX3OxQSkCyA=;
	b=H124x+djSQrYaQTlmrxFP6j2uw7GWLQms+sMT6uhVHn8hVMUNouR/ICfke7bQhHw
	oISFYXaitLAyCjDOXKoDJuJ/7IeK17IaUK+GE10u6ZX0XBM5UUIWn4wRHTm4a4JFv4l
	1Z2KGqf+SN/HzROBovoDbckoHY0vmj9a78++MpDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe9d7a557-ac33586a-214f-4075-b645-794e66fb20a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69c6bc501525a1bc01512621b0e08984999f822eeca501adb94a6050cd4472b
Date: Sat, 2 Apr 2022 10:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648895698
