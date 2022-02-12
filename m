Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8707D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 10:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644662418;
	h=To:Subject:From:Message-Id:Date;
	bh=vCI6HlBDMBgJRAooPnaNoG3oCnBr7YAZB7iUYanyUmY=;
	b=QG99lAqAesI5i9JSNs4A5lzmYsoggUxqsGjG6UsXERhjF0MZds3kn/gTPSeSdSPG
	F6swDAdlSCR++c6GnzrQ6Esf8O6N505mJLEAnSoTI9duKst8mEPwaSdIjfVcX/CagKP
	RxvapMkM2vsa76XI+fxzzFfMc5eCH/iroNhZiwmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644662418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vCI6HlBDMBgJRAooPnaNoG3oCnBr7YAZB7iUYanyUmY=;
	b=fpyWYI26AttOyN8Eh91wYCxqgG3IiBjh2wrGvd1ZxteUWS++a1TCcbK7GXqc/PGB
	xHepE2fOwPfNXoKEvVHgBQHIaFSgiT6kSSVCkJIGwbQxGejFnjh2qH6y80hHlpeu2rX
	fZidF90yq7cYVG2fDGXJ03q9r/87ZeIL2RCP9wKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed84ec8c-d4881bda-a075-49f5-b45c-be140ce94b0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c0fd5a6b8a484fadd258c03d77466f892d5785af7e15b3080f723df93a96c55
Date: Sat, 12 Feb 2022 10:40:18 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644662418
