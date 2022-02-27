Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815D32F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645957285;
	h=To:Subject:From:Message-Id:Date;
	bh=tP1ncOmEhYiiak5e7htFWOhgHsCDYYbXx6OmOkhYK84=;
	b=AY2mM6EOOvV+yM/OvhiMVgVhfYaJX5BPNxINvleJnMrHT7oFLFhvbwQEFFt0p5UR
	ujJe/cAVkIUxeXqJ7uE1hY3uN4d+/AYdcs7uUyHB9q1AJ53NCePcjqsZ+GGPJLKLCn/
	sNLFSe7kLeNr0f8YfDZmn5Whz5vR1U0bpeQLzN1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645957285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tP1ncOmEhYiiak5e7htFWOhgHsCDYYbXx6OmOkhYK84=;
	b=JfxYmjAQO5QY2EhnUlewc65oZv0Qc9xRwSpJBojwO/pMKivznsnjJfYYGHO/F+/4
	adnAqKcf2hqiT2uGZADBppohjUZTMWes9BOAFkwFCpfSQh8/+kICOhbCePb6wWsk9Fx
	UIPq6+f0d7KP15feZU+GC+WnM+A6zxrk+mzJJcEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ab303ae-c1a6cf58-20d5-4c83-93f7-d1c20eb19369-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d270b6a548d3d47dc3c6fc6162220f6d2d39cd4e0ce923aaeef20d1dac84d9a
Date: Sun, 27 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645957284
