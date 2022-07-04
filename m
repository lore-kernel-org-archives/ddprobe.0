Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4158E4A18
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656972412;
	h=To:Subject:From:Message-Id:Date;
	bh=6o1J5OOtQYVUDjqSs+T7tHX4HEVsvagFxun03BvLSVg=;
	b=SjLtp/QACzpf7HijuC6fri0a2eoQghBvGYwoe7A1ThcwuqsNglaWip47Q9mLCoGo
	bOCdDm8BWaPnACpbQS8NfgwUCcGsTPtIpFMNQDDphWkQzqn7nnRJkbf/uZSXj25/WmC
	gEiHn4+71MJ1VRBXmoyrEl13FB8Xu3ZYJ3fYe6r4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656972412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6o1J5OOtQYVUDjqSs+T7tHX4HEVsvagFxun03BvLSVg=;
	b=dI4B579FUWJ4jigI/gHu/a5h60T3uq3bmTGEy9yYCoz2Se4oVghvLuGk0rtR6f7F
	1llo2310vEGM47UDZD3sdBW1ccFB/vd9s2eUwkq1407r2m34oEdRzqrejscpyGmz0uW
	ec6/nyI35KO403v6OL8VPsBquMxJrAlRFBDDU9uI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb408598-e4418f70-a09d-417e-91e4-1ce1645f0f4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30ed2ee32d1a27d1533cba917cc729c9dcf70253dbb43aaead9dcbc07fdb2109
Date: Mon, 4 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656972412
