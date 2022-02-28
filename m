Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E9653A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646048185;
	h=To:Subject:From:Message-Id:Date;
	bh=r4/1mPhXkbY/pUbAj1N+ZerkF3YqF2WQ6q6Q624rtJA=;
	b=KSMYQV2sciVj8UYpm/lBWS4YRty3kteWM+dJYQ1T+tElztG1qYYdYZo/V9S3aXRx
	Q/7nD60/0fNW3PXg30Ol3XvkBE89AN9wjGbuCEglloTBDuhyhBnVMQcXSGgDJkZhKSn
	PF0kJZ4cCnuFRdXrKtq06Z6zkju+dwN4sJD75zek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646048185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4/1mPhXkbY/pUbAj1N+ZerkF3YqF2WQ6q6Q624rtJA=;
	b=gOArS5jKG1IKdkqbzS3uuvwdDonAGQokZgewSFtU0hdmHTdIQYhyRuP5GK6q5FdW
	VYra2Z1HTq++A6wWmGxRPoiQGA+KLZfJqcU2lkoSYNcgvkAcS4J40sOxcXQ1yfE4/o2
	KUakCzWTAmZXjPjReE/udrIixddM7FgGULxj/Gt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f401e09b0-5267db95-c192-4778-ad5a-36086441930a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae48bf5dcd3b8a686b27cd8776c0a55e20fd06478dd700bbd9b4f1ea95748907
Date: Mon, 28 Feb 2022 11:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646048184
