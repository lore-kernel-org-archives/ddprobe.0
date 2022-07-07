Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8247C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657174012;
	h=To:Subject:From:Message-Id:Date;
	bh=Kk5OlTStF86mraRFiiDaIVEz7xQrXVgtPhcBiPoyaWk=;
	b=L5kcz77qcqx5U7UNsJLAbFrFLbPVJfEE0kOfPjseIaWmdzhs/W1fE9U05rFJewt/
	fCMlYAKwS9DZrZyCVMF1+Fk8IIcqzFI27htteefGaTlZ4fsFxJoYSUyrC/rTPED5km8
	qbpn8ZRso2uef0/OsmZ0heKhXN06AbacE5mFobe0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657174012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kk5OlTStF86mraRFiiDaIVEz7xQrXVgtPhcBiPoyaWk=;
	b=j1q2UtDIvcMKM/fM+dUgg8xwTbZ4ajEsmtZZtEOUkCjZYmMsg+e9N1v2zWQZC94r
	mS1jTk2Th6lj0a5Do/O4C5EdLqlmM85RUQGrYe2b0q9Iu4DjUfWXJpYrcyBApmWE55U
	K+dIfXN7Xn/amXqgIpu6tVgkAMydVAOdyRWXUNg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d744b15c-cf97118b-8140-4031-9003-97d7081382bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07f1a86d0f874d199e4016efbcad4ed5b1f4c0faa078f26c5888b306b2b1f8b6
Date: Thu, 7 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657174012
