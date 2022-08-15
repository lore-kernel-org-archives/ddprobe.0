Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEC71C04
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660572652;
	h=To:Subject:From:Message-Id:Date;
	bh=0t1WggZVwJehfGGFczpDzdtb4x2Lc49ev2VY6qW2C6Q=;
	b=NnrUv3wSTna3fJKKZhUNsboZCJAObPsyYCh7KgLlBxAur1vXnoiQigITOQa21Zkk
	JFcOKdj4Hi3n9va855uls40eOsdhK04QE54SJjC5gfBvRcsD888+H/MoYEH0LxJlqWw
	5k0/3CwRIID6QnEVz/tUObP6Bzlszt0KrnNsNqd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660572652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0t1WggZVwJehfGGFczpDzdtb4x2Lc49ev2VY6qW2C6Q=;
	b=ETChO+La/BYEo8P4fhzWYhtFUqaSIY5idubH2C7G//8pSCxo2sZ1rW3r+9CjJ/Q9
	P+fAiEYcpfFsCtDsr92+BbyqCRSbjzaL/23Cf3sBD1fQ2x38Atlrj1W2hRZusikdm+P
	mMBY3WJ/oXEVIcO0NE3XT3khU21RqDWBfPNnoPBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1d7d3f9-c8952bf8-3d10-460f-a491-64e80d5cb93e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fd0a277a8ded61ec3f54a5b0a51c68ed6c569b3e921aecf6eaa02a3502602b8
Date: Mon, 15 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660572652
