Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5222B15A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657687012;
	h=To:Subject:From:Message-Id:Date;
	bh=NP164ajOkBcic9l7l+gQJINQzX6G7W5buKPWpNpLDhA=;
	b=WklHl7IwDQjr+SrzXDfk/BY1xM+wNxt7cKn4KDvUCvSCUPNHsyuXnlK/hZXeyq4W
	r+hxnfskdflEvOY8+h1mEJo8MM667mcZSePB4OGT08ecE8dgkqkAdJcQDkCiOo4I1FR
	QMMdDhdG7Ik3jXEcQyXtwdNClYVWuRkujBJPjwIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657687012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NP164ajOkBcic9l7l+gQJINQzX6G7W5buKPWpNpLDhA=;
	b=TOyPWGpHXTJl2+RBeO8UnDosEzhiZYIhWyYIKyhnuqh/d2MAOaE9k6qBlY0s4xiI
	7U/+PZ//ECjmjDiGcU+2i02XMxkUaXBVvY0Icim8hFgf5i+QFxT0zYqLYjKcfUdBiMm
	k18Wq2iLWSGLfyVxmbDhI8f6gzRednZbU3e4bi28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5d873a0-ba05ac45-e67e-4cbf-8679-005f47e40d75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87e3ab27e6c7633f2f7f9c8346ac77d7b2df54efbf661a699ded535fbf4d91ce
Date: Wed, 13 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657687012
