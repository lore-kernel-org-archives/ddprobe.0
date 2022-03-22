Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA27C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647965785;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnBiiIsP+u/6ee6mSeGvvqs0vLJZ7/I5LdQOhvLffnM=;
	b=C3CLuY8wcdj+ApqyKpqm4Ysk+RO9DdiaWa+C50U5XinzIMOxyLN41ITfzi9SN6AE
	vYzA4ZG+aP5fRK5yoekY7i2O08sYYknYLMOwgePOQEPIgn7D0zUa8RmWNRLuoAuSrjO
	St0vuagyufYMIpnGrwF/mFVvjKmfkIMhiH62/upk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647965785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnBiiIsP+u/6ee6mSeGvvqs0vLJZ7/I5LdQOhvLffnM=;
	b=Q/e1IM7UlUBGrjOeH86Mwdymm+0Ddk40eKPrfp3eOTGYCGPFO01x+112cZQfADxy
	8NkeUTsbQKyOHAyTKoW6iswdrJz0rn33+8Un0C22dt5ZPY84MQ573znrBOBw3U7CsYC
	A+exf6jD6tTPvWOU4gixIaQ9/WGy8Qlxqj8BXzLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb26a4a8e-0c971e65-dbbc-41c3-9baf-fec5e7f96cf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e1ca54a347818a4fcfd6a0e95415706cdf149bfc2a862addf04d201d86a5384
Date: Tue, 22 Mar 2022 16:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647965784
