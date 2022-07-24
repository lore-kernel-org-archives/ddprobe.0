Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F6B179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658686012;
	h=To:Subject:From:Message-Id:Date;
	bh=m4IolZeFi/I7tCMAB4SwMjHNiZr8kKK2LI5129uGQmM=;
	b=V5yWFiQWWmnavAbX6pM3UsbSp/9w8cZfIRkUpFLckHA1IoAF6TQ28655saXxWMrS
	b+i9ozBflSDGIQws94eQmap63yYKZe1bLIH9eLBBF5XCzD4BCRfeX2Lt0yMN95VxO0x
	0kKv8OJclibrwJmrjRudp3mlDDAi9ImkOtzvf/PU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658686012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m4IolZeFi/I7tCMAB4SwMjHNiZr8kKK2LI5129uGQmM=;
	b=k21CprFPczvNm6gjtENVFZKhith2JUMHsT98iuQfMu3cuuIciL2ElVY+/KJwYw52
	EfJkcbucK11KTtDLTmEjELpKgY7pjifGvnMHT/Mre767ki8LtrpqPyTI+mUmvK/jDyR
	H2CjElgA2bbGwBQVHADqBakN4JrG0/MC576/vh4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823163fb97-ffa8e1f9-9c1c-4780-8548-826ede796afe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ff7664f9d8587bc7ea616b548993c7da4dbd372b756dbe2f82fefcdc1cff8a0
Date: Sun, 24 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658686012
