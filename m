Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A27173
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656289012;
	h=To:Subject:From:Message-Id:Date;
	bh=JhB+x+ZVFCwMO23cIgLBVc8pZI6LPWDOi7sThKQarGc=;
	b=QFLbOT9QCXzXf9WGyS8binowtao5gJ4JqLoDNHzKiL7e8Y42TsnlVo9dqMBVb60e
	5UmjGR0Ey1F82uJRK8uO4fdIhMVTZw0ejuwyh5HlzlUXegnk+28dSmY69w+BK5pfRcS
	bNuWnXKDB3Vzkck2/8+bTshesreoF8eBiK0E696s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656289012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JhB+x+ZVFCwMO23cIgLBVc8pZI6LPWDOi7sThKQarGc=;
	b=ZCzl9Edmg9E0rq2QGNaXLIKuMwUdFOmFp+zLoqqopSCSmxORX6cwaq8rWrrSFhgm
	8pLZJx5nv5xdMqBW5VHTppkim5no9qQQTq4ncHDBMJtIx4YGivbml+lXZPYaIZxVw4N
	x35IKMGzadhM+E7dbB5ssK/REO5Ln93rkRcq9zQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a284aa90-0a7c9af0-c718-4bf1-b911-280ed85eb635-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe80858a64936ffdc90eb2fafc3474c3144a01f64c6b3611999ec855c1b1ce3
Date: Mon, 27 Jun 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656289012
