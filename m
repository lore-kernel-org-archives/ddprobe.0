Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9648733F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647788784;
	h=To:Subject:From:Message-Id:Date;
	bh=LjvF/hC2x3KC5PEQ8NLDY/76PP9sMS/5Msc2gdTI92w=;
	b=Zs7rAFDIvRZMp6IJm7gcpziieaZ6YP46shYOs0eUzNawQlHYQT/N3pNb9XBAIM2b
	VTqlxUuNEAiXkAvpX5huxr9Vyu2SVv3eGiN6+fEKcS3iygsMqa6vfpb+Zm8fPqnFBJa
	aX2UIldrgM46pZ5W4FLtbPIPigafVLgCVyZFd2Sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647788784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LjvF/hC2x3KC5PEQ8NLDY/76PP9sMS/5Msc2gdTI92w=;
	b=fMw1KOLsm56Fl/J5xqjRSFFR6aGtxc50/lx8F1d1miEfMMt6rYO+yvOTxjHysLyf
	PTTCGAv3Yc0CR6Ytg8YXmzVvZdgCTMIVQlJhiXj+h9tKopkJGagqnIabs8Y/hOWk4dw
	2tWosFdyjgVmx9gvY+6dAgmT8pqzAyvPuz6IcVz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7dd7c41-e88b7d89-2e6b-4ae9-a174-38f541979c41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad57deb81239f6b2f23a26e5dd907b2b4972b50dab6db3dbc625de045d6fc276
Date: Sun, 20 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647788784
