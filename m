Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8763201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 16:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655484839;
	h=To:Subject:From:Message-Id:Date;
	bh=TRPSH7iX1q0iAd19/1bSQuTG2VeIwYAeRAWJM26177c=;
	b=EHfu5hj1GIA5dBF7cvOyG0uIJJBWA3+GWlSO5+CGVrHYJoqdspOoNXL0N45Ur8n8
	monzO28KcfTiB4FVfY2IiKPdJk5lJE/yeevTsFVWY8uk4753I1mwg6aAs8ryENw/diz
	Gqt9C/ElgRuYClB3aVMqhCYjo6H7fDr3hlgSnYgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655484839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TRPSH7iX1q0iAd19/1bSQuTG2VeIwYAeRAWJM26177c=;
	b=epftnFzB5tmnE+LgrmUHn2W5khnI8WgmQVXWvg+ACY8Mrhcu5bWHRBC2snej0gJO
	CwmDZ8Ce1WRNjMLqWeruYKQy4/hN+Ul4qBwxF4cGqtaNMxX32Wo7r/bS54C5t5+j9i6
	qSilQzmEvTwfIRIfecSgWY657ti5oK7+3cuMqa+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817295f553-d1f32b43-020a-436e-baa1-aabf402985eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d8e23cf79e50b61cf3817dc3a5ca235acc9eb704468eaf3a0fd5666b28f21b
Date: Fri, 17 Jun 2022 16:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655484839
