Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EE910EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646533585;
	h=To:Subject:From:Message-Id:Date;
	bh=lRIJCYpyUPf8CgxKKVoK0uVsgEiJjaUk9MLQKH2QPHU=;
	b=VMDzPl/ziP8QlnSnajBVyX43kAiDdhdcWiOaPy5+NpkDpvOXYGJ2Q7eVRBp4SkFa
	v8rHw/YftfGlWjc42MQbqW9nnxuNiu9KJhEom4PBGao4ME4QJ7uCLN4nnuLV2x04hxf
	v9qqXzb85XQY+xOQO0zWYEGKgTz2mKR6vHN+7nsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646533585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRIJCYpyUPf8CgxKKVoK0uVsgEiJjaUk9MLQKH2QPHU=;
	b=gNs1w2mDMrC5aXlHxC3WCeIyKPNwsFkjkTZPuVdujMQqT8qK4DFzGC29FW7jKoRV
	BztTOokVPb+7cIoF2xfBpCMpcgd9cTCkm7itPScI2fjyk+HZApSG3qzCNZISZSNxt1Z
	PYNAgqkgHJgcGoiIiCqp08jQlzFWzrwFd3zfFNzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d0ca78a-6e28d318-fa77-4e50-88f5-7e273b4cc1a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cf8df658e5673c29843b0c963427e00945a52d480f79d3a1865b5d1c3ffb329
Date: Sun, 6 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646533584
