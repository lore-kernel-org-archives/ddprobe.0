Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FA1185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 13:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655212379;
	h=To:Subject:From:Message-Id:Date;
	bh=EedFcNNgXRgsfTfONIq6j7FkaFau6ZwEYfBrztM3ey0=;
	b=DiH5r/vIDa33obQhs79mSYEfsLYtJOEA8lUIkwmO2qAIKxdEgfZSujNrOvs4r1KA
	01egYM46s/CPzHfIHYCEvF5Skh8VVOSvxJ3zYn/kJCps2kHdJlF1S7Gl1ylcMeHt9Gl
	p0GYVhEAfYR30wt9dMATLTry0pnGCrNDZSZxRa+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655212379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EedFcNNgXRgsfTfONIq6j7FkaFau6ZwEYfBrztM3ey0=;
	b=P7vcO/2J6qkObGLZMmhcHaTCXoCPyY9/VcJ6Lc3dBiaXTNmXVUAYuRL7Lro6xXZ/
	LW2ltROhpuPcujF866NmBnERh6SuHjuhHen2ehnEsX4IxSzLhOf1AeX3/y9rVOs7AwP
	7+nfQYpfywIgqq4a9Jh5iohbN7He/m7eD8/hzp1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162588cac-0601f4a3-c52b-42dc-9f45-6a8454f648e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d26a7d13f7e9ad63d4aa6083bb681fff482b353438b32ce67233dc9f0880d7c
Date: Tue, 14 Jun 2022 13:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655212379
