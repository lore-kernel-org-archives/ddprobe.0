Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1AB6013
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657046212;
	h=To:Subject:From:Message-Id:Date;
	bh=Uaoul3QKxdlpNLkItiN5gv/HnMWWdENFOu/ClIqnCU0=;
	b=V7D/m9Xhwgqn1aGX8Jil0JdaHMHjOF1OCwCohhrfAgNY4VhviVH5hqvGhV2Mf01V
	KvTcEZdW/LM7Zo/sEZuHLvUDxJWYub6mrdnGIibCfC7pOrkmK+l2fRrVC5ORNiq7E0R
	85CC0dYksDhFq71LvNqifoLH5TujEEBfZsAiYAik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657046212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uaoul3QKxdlpNLkItiN5gv/HnMWWdENFOu/ClIqnCU0=;
	b=avA/Nw1pdHQnTYgLxLWXr465q5q7+OyHzYdY9ONyWiDkJvFneKpU+PeHHhjxik5+
	hnCAXPsd+wz6uxfcFsQEkjFQqPYLeSR1I7DdccATDqpG4Qy+Ql2gypWj/Zs6PHA4PuG
	mUY6gkwJT0ogGCv5pWLJynDGJlyz2FvwWJTHXQcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfa69f09-51e50e48-fecd-4793-b601-633e61858f3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0f367c84c8934b2a1af330039ca4904c867128c5053d27d4af7864ee3015674
Date: Tue, 5 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657046212
