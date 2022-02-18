Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE122FAE
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645213885;
	h=To:Subject:From:Message-Id:Date;
	bh=0fMvq7bzJGREsQ+bid/19Qg9vghl7/66EYXWfzyrIHw=;
	b=fNga/7K0q6+53m4zU41kwVrrdZYZhKSJpEN6Y7VxGvpbEq3Hvp0CYxsG0OvBW7t6
	iQ1sMrhhbpyF2Fsw6W221qyOTdfowQ1EKZ6LrxX2bQrcYShS1sIM9deO5HEhhcW/U6S
	hdKHR1bG1Fi5V7jvO4ZRD5zgBlsqyJ2rlH0oJhHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645213885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0fMvq7bzJGREsQ+bid/19Qg9vghl7/66EYXWfzyrIHw=;
	b=ghHDeUSpZm50rTKTSGWE1qmFnUgS6AXoeTiSu5T7g3NsMTk19NtPueM8KF7fXQF2
	YoTZI/l9XA1jhR3SDZ3sWAUpXGlQJEfhe5rgWw1/58o/tFTNIB/prQhxLL5uT9a+xMv
	3pc6wQRfdwBQ6bzsHbP4YDMQSQQEKdczJPkye8Xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e63a180-731e1c6e-5da2-4298-abf1-f06145fe135b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc3b436dd1c1b3d17fa6023ddd33397edd23578df679a8f380ea5feb73178f62
Date: Fri, 18 Feb 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645213884
