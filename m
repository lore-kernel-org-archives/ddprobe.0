Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF6062A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647135084;
	h=To:Subject:From:Message-Id:Date;
	bh=K/WmE0FSkzSQM5gs1rSbjUp6w01SQDwdVSa49oev6YI=;
	b=OrEpxSH8sNgirvf1+V8JByWlQdqe8v88yUvSKx2zAbFXGX37JhBNgZdgGOn0bgSG
	+3cGizua6Emk+X8xCwwfxroztrwtXZKRggyBV4lGppagYAdEdhv3Z7mR8ulti+Wps1D
	IPeA8230d44foBWUlFcGIJcgoJV348baQ/L9B30g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647135084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/WmE0FSkzSQM5gs1rSbjUp6w01SQDwdVSa49oev6YI=;
	b=NEQH+fUdWNOZOcwpBfbhD4mQN5R8yZ9Wl+3MPDJwb//wKfvD1/pgBp7z0l89hFoT
	mg6kYp3KMDUUIHYrHoSIpXmzSevXCleuNKR0PMqovUVV4yDw93ynbZhuNRfsnGu+Jbg
	vyuglQ5aWQiS/h1YkmBx8vad9uGARXtVQhbtgPbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80e6d0c3-c9e74b0e-90bd-4afb-8f35-c37c0abacb37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65222082f232e71845b869222ddf5ba2194b15ed7dd2b1455577fad08a66e42f
Date: Sun, 13 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647135084
