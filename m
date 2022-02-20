Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BE3161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645355784;
	h=To:Subject:From:Message-Id:Date;
	bh=ujApcA0ua0FZ4QxM+vYDaW9BUTzmq8w7fToTalQTCCc=;
	b=jkOL8u/vlmrn1qB0CmcAPert1NQDVMYYMKB0mjSxFVBGpX84dFD2oviPiqGE75zw
	2HZevV/PxKL8Opq1gQPKxz5CoY1tCv9ZCmLOMAT+Y8FkjkwZ9isnVtja/9Nzj65cVRC
	jtjqqoXmnBc/AVtIOXHsznGnixT+JVLVskOFxFgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645355784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ujApcA0ua0FZ4QxM+vYDaW9BUTzmq8w7fToTalQTCCc=;
	b=a8SegDj4EAlYv3TdOuXWJya5SUkOsMQxiL0uAVoiV2ctAt5CZOQ6gWEefMVDYx/a
	F+shbD695pyVwA1ADympE9Wpy5n/+dpxLgJTq0Jni8keTwLfBeHUnSH/SoGTtiI3XZU
	hjVPrmYmioc7eSgf/mjfm/vkIPQyXsFOjT4IQ82Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16d8da4d-b0bc7d42-91ca-4464-870e-bc11e14c1cc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc3deb4b234ac0347a6dd8a9d71b404a5bba0598a7691af784a4a048a6e7d84b
Date: Sun, 20 Feb 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645355784
