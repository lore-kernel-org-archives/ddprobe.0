Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A294B38F8
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647450085;
	h=To:Subject:From:Message-Id:Date;
	bh=fE2h9EjWVSyXxEF0XidsdaCkLmWaNp40u/ivI1LEm/E=;
	b=b1Fqe6FBGuc0eBZvCygkNsOKiyGV1wf486cucTp8ARnb7mgy446kzj7FbFmMNLqS
	VkjX5xBDEzLFVgwb04zPEG2Ea0xMnFR3I7rMnSs9omL3z987GZ8wfhsmlewTuD7cxH1
	3VjaLCIel55TZ8NJNNjKJUzynoz026Af0TYr+THA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647450085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fE2h9EjWVSyXxEF0XidsdaCkLmWaNp40u/ivI1LEm/E=;
	b=Wqj7iTCb4s/WpKzvyomDB1j7XO+FmtQr7NKMqck1Dg/r8WQKCpoET/CcPqGj3ALi
	RMNVun68meMVQ4w0eWJ0UZ6Tv4inQEKgu2lf3JuI0WkZZozPbAc2g0JMihxhk6CYQYq
	jSCk8A7L+51ZTCahlFQNZgiSgFrVwdAVmKCGlTAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93ad55be-45295deb-ec37-4966-a489-fed0d28c7545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06c7329db485e86774486bb495c6a843ec327e7f89580676cf2c1f7c6a04bd86
Date: Wed, 16 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647450084
