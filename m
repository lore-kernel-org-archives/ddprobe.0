Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2A72100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 07:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652428259;
	h=To:Subject:From:Message-Id:Date;
	bh=w1lwg3GJbKF45QrjQ0pA6yEb1wLRF4CNUokPh/5v8ZY=;
	b=F6VOSA5qDQAikkF2u0IdKeoHicl+eE92U2p4kk/PGy5azxkrEm57Dozq01mS9V6l
	hnXmngai54KID3Msd9h0sj6xjk8rnb21Z7HVGry1gtkpdHZxHAXvb5OEFlZAXLuYX8F
	SkrIj8L7vqeT8QL+d2uFrbUKa6AFJiM7j6Uo4vCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652428259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w1lwg3GJbKF45QrjQ0pA6yEb1wLRF4CNUokPh/5v8ZY=;
	b=bvaVLbWjfai/SD6Xn39eMGcqlg46chu3cFWqBrzrNGoPiTw499jcmj4WPQMCbRdC
	GtnllceaHV/2c61CNU6G6wwInlKXpAJp+N72QGryEcu2/7HkX2ZW6sqprhv2drgQnAq
	ulBKF5nuEprmFKs7W9pmn2HJzddZ1FakqVgeUXTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc663fcc-ae6f1493-5c00-41c2-a3fb-431b3d04aa19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64e23f3fcb81949d877a5faaeb361cde213e8f865a371e1502cefbbdb1102426
Date: Fri, 13 May 2022 07:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652428259
