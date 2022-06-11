Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C627C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 10:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654945019;
	h=To:Subject:From:Message-Id:Date;
	bh=TDdgwmOCW1r5PG0SsEYi8W+xBNsOsOF0FOi5AguuVXE=;
	b=jf+wKRA5L0o9P65o8wUBKsUYLH8J/W+++hq+G0OLHURoH6Fwx2QJUU8ecVFvbGSu
	C9qr9yQUCkxcsYLTSSz0Y2oJFzpy7NZnKibYZjH2rM5FvUeBZXBqJADe+fqSdEP5e5M
	DQexVxJb5pmCxz+iebK+/CXFCRhvqt+yxV6U2iio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654945019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TDdgwmOCW1r5PG0SsEYi8W+xBNsOsOF0FOi5AguuVXE=;
	b=ge0vcovAWbX70nutNa4bou2Dl2AyLLpIiPCGs97oP+FtW8Q9JCHwpn6gU1fZiEOU
	KematKVRqXMi/imHOoqtOs+ZT4sZ4hTM6CxLPfmmdXXENPJMfsuJcyB9J+7l+ke+x27
	whwbJk5zmqCc7uP6d5Bs3DniBtQHfoIk3vS7qJSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815268f578-62d740b6-aea1-446c-8496-dd6344fe455f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab677713210a78f9775edba9295330a8bbec22baa024d35cb52d831ad209a9d
Date: Sat, 11 Jun 2022 10:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654945019
