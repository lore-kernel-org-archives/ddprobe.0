Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0378C17C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653040679;
	h=To:Subject:From:Message-Id:Date;
	bh=kvxrxDlNsW/0mhuDDCXY3gkJXbkoqyxOPnl9DoUdZok=;
	b=daTNB8JHEqgXflHRuW+mhjFN/K8vaEVg607DgQnBN2OBRLTIbJPPVTQocGjDmayp
	dI/hf2iWQEdEASZ03MD1u3BQenzo7/tMorA8aqVhhVV1uupDqDLJ+2INoUk6vdYMghY
	HPDMpyBeC3d1BKelX4U+5+lL8qtXSuyovWYJEsb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653040679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kvxrxDlNsW/0mhuDDCXY3gkJXbkoqyxOPnl9DoUdZok=;
	b=E6aUIe58jk6gfWWElii0p5DUVIAaouMqAE37QuDAQPCKsk8ikfZIR0TDSWm8EU8Z
	xR1CMkhKddIqZJifPKFVqJ9BrJHjyy3nPwpUYAl/qKlSWYyYW5ySBM1q4cwHYSBtGNc
	v6b84l7db5Nz0sCOT5LsGdqt51pTGIps+LM8MVwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0e7094e-24b3ac55-4332-4191-8627-f95d93e680ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd1c9f28d79349079972a12c6164cf27344569cea31375c39489371ee3ce4184
Date: Fri, 20 May 2022 09:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653040679
