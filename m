Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F35E1852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652856959;
	h=To:Subject:From:Message-Id:Date;
	bh=Q9Ue/OXkSgCdJCkP4v0Xlq/BUQceVh4cEkl9D7SAt6w=;
	b=EycQMPvnBiGH1PtJOQIfyc4dS6zwJYWigTvOcTI1JP/tLP5ZFbM6MUeYt5ye+XRc
	5UMkdy8ecLNa14r1VqT54i+3OaYOWCvErhNWIODctMLavanIS9pUrBqe+NdVe0AvvRb
	rfdGj3DJRRaUCY9qjL4gSKluMykW+zIHDS0fRWS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652856959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q9Ue/OXkSgCdJCkP4v0Xlq/BUQceVh4cEkl9D7SAt6w=;
	b=TFcbLUFL8xg4nAcjFYvOOQC57IqYeQ6ZbvjdwCy2v0+P+kA6RCALatcs/wUm/sum
	hVGk2it9TiyWxilJx5V80cBM7qjPYrdiSIozRsczCzLuQKviQ5NUORHVf17GVg1tsis
	h9bDxYTO+keLvY6eo1l/XhBJB2h/yAWEfk6mNtmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5f3b14b-eab9ab97-b5ac-4a1f-97cc-a05c7af569bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 659753e25c400dc579201e932c9ad9d2556c65a2ff5d2b8b79ef6f998a6dd48e
Date: Wed, 18 May 2022 06:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652856959
