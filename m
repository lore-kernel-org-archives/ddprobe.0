Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6F4638
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657219612;
	h=To:Subject:From:Message-Id:Date;
	bh=4xzZ5HoKXkvTJuuBj72gso9fK4Rd0g/69f9Bza/9v20=;
	b=eghUSK30XuDDlsnikRAdHGprwCyHBr6eZFTYjKK943DN6lAQnd4wmff2Vw1lQpAJ
	QK2PxenXJlHnu/3YODIeWAlxsFXhPQFJd/KxCeh/TUL0rhRIlBYv+M/mh9X4pq6ZNAj
	Y1PD2kmvNjH04QB6La9qnwxUiaFWkvaAVMwFZMko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657219612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4xzZ5HoKXkvTJuuBj72gso9fK4Rd0g/69f9Bza/9v20=;
	b=Zo3xo0l+66xhmx3KSAKUwe+hvf/g8jgKwRDGhdP1jG94rwMT6emLTxVJTLNhFB79
	54Zh7jMXVqshbYoMxXl6rv6qyt+j1d8ottTVmg5aBvUPVQ8yP4YLl5ww1N+wOic4go1
	3/SGunw3s+xz558RIyP03SwGlWUUOtX+rGxXIQew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9fc7e84-17a04f2b-aeb6-4276-bb3e-6beac1630e57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34cef93a12ed1a0e5ec5fbf1ca7dd80890ca1ed1df3c42ece42f1a2552ccd526
Date: Thu, 7 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657219612
