Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0327C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646366785;
	h=To:Subject:From:Message-Id:Date;
	bh=7SNcxB3whjtBAF6+Y+AUPmZyQgR861PCvRIfpk0QRbI=;
	b=Ux7xNfHBIqMr0z9QGnZrQ+NN9h/xB99JwE39CSc+YIIjg3AeUdW02B5TTjcvhKz6
	Oz/dknn/CznJN/U4RCTt6sdvm/NZRxvtfVz7yYKaNbTEOz1P6980GJIKF9S8B4YTq93
	VRLiu9g+aEcd5m8K8P3yX2kPTRf2rD0sQ3IBrMZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646366785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7SNcxB3whjtBAF6+Y+AUPmZyQgR861PCvRIfpk0QRbI=;
	b=LZvZ4OvT7bCnhDFD+YR/ci6uhv7Lo30y66C6zOO9x2aQQVbkCVtZqWy4d6LKJWb6
	VHjUnlnCt/kyXwtxntRJvsqaT5cmFAm9KdeAgprbDjZ33tYsbXEfCP9bmpybUM02fk0
	Z/dDqJ6gPRXyM1DIoWAw9970G/dfrgCatgAqvm+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f531b7d0d-758149c3-4e44-430f-a2ca-26374a5785d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd6d807de9de23bb9fd0de7d3247f7890aa73e37b26a920034f1c9211b55a409
Date: Fri, 4 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646366784
