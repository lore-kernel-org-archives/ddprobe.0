Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE1F367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656394612;
	h=To:Subject:From:Message-Id:Date;
	bh=5s3WQSCC7PO5W7n3yfp4Z8lbt0VkzNWeF5YWAQiTX/s=;
	b=h5yvjD6ZjTXrjM8gH45ZnC6o+WNkxx0isbKLUYgDW41bifqYrGX2Jah5+cZdjZy1
	lqO5dmljNjvk/hzbeHl2IuQeiE9DKRogLp3CgZytP6fVqZFse0aPewGTKLfpuHL9SI9
	xKnzCHPjjXEnVVzwyzuXY/uEJXU4LT3mMk2EAeqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656394612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5s3WQSCC7PO5W7n3yfp4Z8lbt0VkzNWeF5YWAQiTX/s=;
	b=iFF8on6R9/iE/hdFTfKaCqVl4f0rfrBf2PQdg2Iz/rbCTzH3jHbHPNi/Pss3uRm8
	/2CCBlD9WnVw30yxSxqkzwb5btTKtAURD509DWWCL4M+I8Yg/Ow/ezbPwxyKgJk1OvM
	Zyms+wPdF444JrRxoHH/d7WVbjghNtulJyPph4b8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8cffe3b-e8a1772b-0cd3-40ca-8553-a13c4a380cfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97911904085ae11726b7c597283e13b00220e0955e33efa103fb6fe58ef8d8f2
Date: Tue, 28 Jun 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656394612
