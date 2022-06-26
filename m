Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FD67A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656281212;
	h=To:Subject:From:Message-Id:Date;
	bh=fQidMyGh4LDPVBADbVUw5cuObRRCxodMp1LhAVRnWgU=;
	b=aCSXLIjPgnNfbLwJH5oB6r7FxHKYKqdspDSM+tI71tg6nMSMWK3iS4r+hefFcF2D
	cCijOXGA8KwtKmHuse/Nvl26yfVv7jArfJ6zmecifjUuJnpZS0e+8e/JFDr1yVCndWb
	NQTc/kP5mTKg5vICKkfUcpQiRoZqBtn4/en2lE7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656281212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fQidMyGh4LDPVBADbVUw5cuObRRCxodMp1LhAVRnWgU=;
	b=NN470YOLojvwJmyXtQvJHzeVo0aK8t6lRtWUFZrM9D4yUbM+eFNRYW46fu2OH9IQ
	RHkw/sceaqitk1k+AVJm1B8sZHrzz/BJrkKRlQfeVTNytrl25t9QX/e6CLq/nQwR0hg
	Ni3VAP+ylz0u9+jbht8dckSo746m+Yy/rOJlNqRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a20da5c3-4035167a-4927-41d8-867b-53306c3aaebf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d63776b62a08237ae3993e35d7d9f70194437e5a327214a7d1f6af8cac88bdf
Date: Sun, 26 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656281212
