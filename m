Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BED2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646515884;
	h=To:Subject:From:Message-Id:Date;
	bh=G6mmPkONTetq3f/lTEfPicylyLgQW9BLQs6CMg9dO0o=;
	b=OCRoKZlpnr/EIbmaAEatD99MFHsnwNh/PsXRpUR4/xVIHnsy5lpzh7WLbCGzdpL4
	RsGJI1TqglsubYWwYqIKvtJiESL9gYrLN27ZlBXHyCJwsmirUekRVHv6wZFVYgng2BI
	KkYUSc3XWgQI6vFfleCUzjyve9dkmOgerwVK8cUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646515884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G6mmPkONTetq3f/lTEfPicylyLgQW9BLQs6CMg9dO0o=;
	b=YCIQwHaH0CE0jA40uVt3lmWc1uWpwQ4Puk9MANzA5XnK0RBnnOQyvCZjfyBSS629
	nJiP/Gt5khvRni/xZ+xv6JJO2vCFsToxAP9jC0Q3Irp7vf/fFeZ0Kas3t7MIeZt9CYz
	AdKw6r7d05+AUHHuXOiOTQ9oqs8FTXPCOlQzW4oM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bfe92f4-b7914658-ecc9-4709-9f83-c447a81a77ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f26f6bf19c473e40175bfc0c8e7f1430b1f7ab4ac5c869490f8b84ad8b29474
Date: Sat, 5 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646515884
