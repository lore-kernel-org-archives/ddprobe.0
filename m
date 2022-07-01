Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4D310E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656656212;
	h=To:Subject:From:Message-Id:Date;
	bh=7NMdQnzl4qdvjkUluy3jJPeUiIjNX4BJ8e9NZ42/ktU=;
	b=Luulrn56F5ak9cWys0xZS5KymTTrjhIusyyMYFJrPlJEQOs4ywuzmNNo7dUaBInU
	faJHngkN17P7DRpbEaHUPwUW5ZuqThCdc/3fY0xLKHn5EapuHpn2EALDVqy++FLSwj/
	1T2FDsv6I2ASAAGgNwhaELl78QjCqRm6aVqp28mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656656212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7NMdQnzl4qdvjkUluy3jJPeUiIjNX4BJ8e9NZ42/ktU=;
	b=H59RRXY1T0s23BVvZVlW+E+FV9CnXeASFIeoPOkiGTFmfUphE2LTCEhB8EITVz2X
	mQbxwdfXwNqQCZH0S1DY4CScAJeh4F0Jv2v65BqFbd6TEdbsZ8byPrmjvBU+RTgLEAw
	83+dQ60TqV4SC5pP7HvhIsi7RfHD4M8+KuI7mqb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b867b166-e8015137-79ed-42b3-8eb7-7c3acdc50d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16dbfa3520e6a0acb8534ee983185dd2561701c916bbd5efb3c6c056924c2b38
Date: Fri, 1 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656656212
