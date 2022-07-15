Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CB12F31
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657889212;
	h=To:Subject:From:Message-Id:Date;
	bh=t2icHR0+jnpmeyOrzfH899hHq4G3uQCII224+fUi6dM=;
	b=i0HTiCTFco1QdIGRjvcLcyLO/qBjy010pIL4iRvMZXbxavhy1eRhaL0nYnyg7syT
	YDuLuAYFaM0+T5mubtgTqzy2naQUHIPZlAa14Xeov5MVsO7iz3yfJcO2AYKrm0Qgznk
	2raMaZO1SXfk11K5YFs+qAzjNtqwDkqGacHMv4wo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657889212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t2icHR0+jnpmeyOrzfH899hHq4G3uQCII224+fUi6dM=;
	b=jjYa5IC5Pl4IjHRfHcy+EOg1IRjfCYTQtiAPCF4Gjx1pYZSRDhiwcfDqHJKf6wJw
	9xIN6CP5rZNGHJ+dCq4l8oXpjG9agH2FLNuBmrYKYeetq+x7LoMC08U7LjKLJpWTKuK
	uay3PbnRyYQFB8juhOHtHpJWZ808y4mbNXwSOcmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201e5c76f-268f4c1f-5f8c-443e-b466-14072eca5963-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5449c8f0399b54d27b79636840d7d36c379b76dd0df23dc02d5442cc59ba410
Date: Fri, 15 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657889212
