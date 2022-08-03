Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C8363D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659527452;
	h=To:Subject:From:Message-Id:Date;
	bh=H40y+uVRuq2At+OyXOGvmg3o0s2/Tl9oLu+XKHfDuIQ=;
	b=haY2SXz6hxvn95t+ihzZ1r/Bg/RBSKMRkQO6AGvbTke5JJdPEBaqMZlv7w5qNcvS
	rvHfQ7htQjZ8vWiHZc5PNGajo9noa7z6NddEp3zueH5TCY2mZNP+Zi3+ceK5JTXCIFY
	u/kbR2dVD1gavxKByN9xt6xeCIuosD2dTeP/4j9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659527452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H40y+uVRuq2At+OyXOGvmg3o0s2/Tl9oLu+XKHfDuIQ=;
	b=WQwRLeSOQiCiS6hudYbo/LTcJcvns62XBoY0eiSzvJOh3ahZHrNub5rJPEBNZW4a
	GjZ5PamJ1n9k/jtMrebOFcn/7BcM/8rc/SEMIYrJUMCsOWqzepRrkpDg4DLMmsoC2kj
	4uUwEgdU4e5BNag7BNd9EJ18DS8kfTSyNz8DVr3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182638b57af-2187d66c-43f6-4e49-b3ee-895a6c957fa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfa2d1d72c4cd4a2d87187778393c99749ffc08129323120d7b855927aa0b3b4
Date: Wed, 3 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659527452
