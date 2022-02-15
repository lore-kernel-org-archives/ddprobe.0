Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85259158E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644948385;
	h=To:Subject:From:Message-Id:Date;
	bh=+Tv4KgdypUWXBscoaYAxmkvB+X0gO+AF2orDn7prIeE=;
	b=Wv2mIriXla+mN2i4fzdgt4TB5TJHw5c/c6q6IfyqqebaNoVSPRfDZ8iTdCSiIGcy
	6RZ5QqyMqFMXDC9GO/x2pTFzT+xzopOI5Y+J4cjQgc+ThSTr7E0Jtc8Jo+YcaEgYhGV
	hMM0zUb+zub1NCz/e53fQ2uvqv6u84SUR5zzvnkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644948385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Tv4KgdypUWXBscoaYAxmkvB+X0gO+AF2orDn7prIeE=;
	b=JqMjOInp8reeojS6sUbAa5HlRllBcJ/GDCIGG+KXxCJffqtpSmHbasfJ3GC9JtBw
	cVbNlRmyTgmrEzZ9ecWjllySXCEh0nRoLl25LF3Ff7DBsmr+D0Da44p47mV4FFoz4Mu
	2ghHpesu9dLjhLxZtPxJ2S4THLXk0K2kY7MSHNbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe906c24-2c387bcd-0b6a-4dba-adb1-7fa60c7ab783-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40fb7c6ef5205e2bb18ba30a615e3d839c2c5a17eaffb6ec7b8c417832948fcd
Date: Tue, 15 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644948384
