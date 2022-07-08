Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EF636B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657262212;
	h=To:Subject:From:Message-Id:Date;
	bh=5rvOtXIScqlXTaIO5ZdynV1WaiHgKzAAgqQsvoUaEYQ=;
	b=OUY7uGkC8EhoYMVruAe5g8fxPbWSow9TXKZaAocN5z2e/nIr3M61/PdsMin8vCBp
	LRdDd2Bi3/Sl6DHOs3YBpfsUAOjt33liDmA/Rdh8ykmoDctWrz3jMIdNmk1uoz5dRQV
	TaC6NWJwGxCNOvWEnKuNrH/MXcD0amQLgRFLqpPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657262212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5rvOtXIScqlXTaIO5ZdynV1WaiHgKzAAgqQsvoUaEYQ=;
	b=aYYZsQlVhwxk3t/Tnn7XOHLUe4BEFlNfVUpNhZy0w/kfWRnQUxvzWjf5HajHVFRm
	zkJhfBhLEB9RABugUdIe3D1lTaF8MYvCYD25h+7UNn8ntRXma6R6Mv+QpFTjuBRC3/0
	50UuX0yMxSqK3wBUNat39GTMOfh/Z5gj/vzyLmRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc8684dc-2c6af77b-ac3b-4ab7-853f-b0aec1afc3a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 652d99a9b17f1076635eec015d1c29ce377a5394679a47e63e194e18c2b0e798
Date: Fri, 8 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657262212
