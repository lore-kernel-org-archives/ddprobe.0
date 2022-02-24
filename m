Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE871B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645731085;
	h=To:Subject:From:Message-Id:Date;
	bh=MdQJusqcfyrovsvfHxjauQzlvwtR1oMnVMJQYtK2Y5E=;
	b=W+rNNUimW27Iwt1iLjc4mQwnvibrGRXynW2Ya7ElHGz/LLAOfYFiaCcfUEkAXDud
	dxgEc0nSgo7uJI+cv21UjJpkdV648FhPpO7i9g/nZDE51OHJ57ZMFRTwZveZIDch194
	wOErxVTxZwbD+IVHmykPLQNVNxzqr9v8a9EYUddI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645731085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MdQJusqcfyrovsvfHxjauQzlvwtR1oMnVMJQYtK2Y5E=;
	b=cIqDykxC8EiG3rwE7mOh1udvO1Dz2OICI6Uf34hzZMKCYYX+jziNS0mYeCBdzKFA
	YZx0TVoJf9HSXW1nkxWVY8FfZguByudwRPlD6X9l0ahv+GYuNt9AtzVQN7mzunk9Sy1
	6+gmvTG91n5UXbzfyoW3HRS5VrU5jaCHxxVpawMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d377a16-d5801cf1-dc88-4260-b4e3-60cf21b026f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6376e23f0f9685a0575ded84b6923c216c13a3f7c8e3e2577bcf3ffc3ec9bb81
Date: Thu, 24 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645731084
