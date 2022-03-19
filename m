Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F24B20E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647709585;
	h=To:Subject:From:Message-Id:Date;
	bh=6e2C6J2IuGkzNSCOBVkc1daQaz7dUnCrh2gkC+Tx3vE=;
	b=LBm0c9xvjk8bZ+yaIgaUTbbHjpPp7YWFThaquYRhMJk60LiOe/9RgrI4bfkvGgcX
	HQCCEc+ysU14zHhpmGZo3qyEGEIwbZ5+AAiBp4QGKWZn6K1bebzUIeHw1ZFx6CGmzCW
	Mh0C6DnL6kTv1esUQBsyjIX9fH4kffk6ugN5Uxyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647709585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6e2C6J2IuGkzNSCOBVkc1daQaz7dUnCrh2gkC+Tx3vE=;
	b=W1/q/sP/FwXM9EBUuRB9kB1ZQHJCMXatCNkxQwilA3UpmJSVGX0rPAsaUF9Pn+4z
	meZ+OeBq7+Bhdb6w8jE3xuCvmC8rvPPHAyHPo5kTwq+2XbMFdUq0Eq7OoyXrRMh7mkd
	N0gd2lrLl+SsRCSKOsmDmk+A7jPYflcW8bJ25HyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa324fe01-396fb5a4-5e5d-4af0-8256-2e52b409e047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a37dbdc41a15b76f363dc10953286f336c0ae3941f246863c38bf1dbc293741d
Date: Sat, 19 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647709584
