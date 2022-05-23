Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9A07C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 11:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653304379;
	h=To:Subject:From:Message-Id:Date;
	bh=Fj4CkvZNqF0tEx6n0u+C5MoFjVxYFlnqlkDi5l4+AqY=;
	b=Vwox0fufVC+Z3ZHmk7OzF7XaGf9lWAQxkK7IKFS47pUD49Eapwi29y9dVJHrYQ5d
	Ab7bprv86Pe44gTjaLiDcLareOXeWBu/WLQqFOZqNCgg030KTtzt03LWpOaZ9r1pRwb
	2ASu4hWpZUyQRMTl1etjdYnLW9+pKyn1il9mBBGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653304379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fj4CkvZNqF0tEx6n0u+C5MoFjVxYFlnqlkDi5l4+AqY=;
	b=bW+Ga7YNDdwawpMYVxPsyb7BF850qcYU1EyvSqzRA79q6+UWQ38lTjAVabcPqXd7
	LVkZhjit+s1LmsNEh3ff6evexddraYkzdv7rDu+ox23F361rjCcpusDP+dpAxYrFBsy
	ppoGMrnlXmgt2H2WREHUjZylnCAmi3OTo8gEHXeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f09ec785-33d9e798-96b0-4d7e-a708-2c1622ae70d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd05ee52029bbc0d63d66b85641ebd75a38de5abe34f0fc784c03e67cf778b28
Date: Mon, 23 May 2022 11:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653304379
