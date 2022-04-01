Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E3EBF
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 05:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648789978;
	h=To:Subject:From:Message-Id:Date;
	bh=MzFfs7E2/Fgv7SUdcEsjh7GSV34jHjHIHSFv5Z/zyVA=;
	b=gsUPF/uXkmekM8ipmD8ncjokt00Xs1clUeAw3GslNxiYjn3ob/mFqXLN5pamhpp1
	AY0q5cSoZXwPGOCZwprQlcpORUjoItEl2169MbYhQPMJ9qFkptFfwpLpr0aehMgOsH2
	XHmmTknXQUYO0uQDDc9lXcxGkOzU86mXx9Ahkdy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648789978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MzFfs7E2/Fgv7SUdcEsjh7GSV34jHjHIHSFv5Z/zyVA=;
	b=LFjPgxx3eVJufjpuzk0dAaw9NVGVYoj9xi86e0ZgEu+fYXWD13XVi8Mw7mBdnAPw
	KOHD+zgRLUFS7nN7rZXmCi9jCpoWVIsqjUOuwtMPeagGzIq4x4GwPmkxeOBEroa0Zhg
	hzISOlf+v8Nmrdmw325++gUTh0dSv8ZmDReBz1ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe38a7cbe-27d231bb-db0f-43ff-aadf-c54189d2bdb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df8a144d996532fcb9f1869c91fd4d89adf8ff360c4f44af0c1254e90b0d7224
Date: Fri, 1 Apr 2022 05:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648789978
