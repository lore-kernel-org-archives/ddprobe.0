Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58395A12
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646135184;
	h=To:Subject:From:Message-Id:Date;
	bh=q5Q5ajyQiGNHFL8MUv0RGAAmUAnBpzip4JRBw4F97FE=;
	b=N9jilzbpAmTc/IwHw/XzqMVebbxJhcN6VFPcrh6HKXvWw/p8gudHsvUelcHjuo6N
	p7WbJQ+VXeeKHJsIAv0Jbpdb1zfS4eafzkSefbVxFIZ4A/2kICQ+y3QV+ZdciTNJmvv
	nY0KSfA7J+JQpx1Xk7Nl6aj2RFC4E3AwKBp2Oue0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646135184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q5Q5ajyQiGNHFL8MUv0RGAAmUAnBpzip4JRBw4F97FE=;
	b=JMopRVl7iOmk3vAZ8hnB/IygNKWP1A35eMjm4eGa98XFV22GoOjc9UwYxrQ/5j/Z
	qArJIfO6a/ULttRl8nrbqLc+0bYy8f6ATjrR5Kknw62LZHUY0CRds2xRTT2/DsD1IQL
	qqpAnMJ8zyJmimqE4JgmA9+EyL4CqQjY8C1NDemA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f454d8d5e-d2474bc7-d15e-49bd-b026-c0e72be4ff34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c1d6d5c5cf49c377a740a559dd95933fc2046c203f72b0432973f33e0847c20
Date: Tue, 1 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646135184
