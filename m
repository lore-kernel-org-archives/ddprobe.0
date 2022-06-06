Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F386F28E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654532219;
	h=To:Subject:From:Message-Id:Date;
	bh=jtnQKSeFGCg9PfbHZv0BLvDkiPG6m4Crt1JSE3KzJJY=;
	b=KZrElZAflrLPH7r+CeU/QxRqJw5LPiqggsWG1y4UodCGCrP+rq0qX0seRqq0JZt8
	JfZFTbO1j4liLPcawna7iUPe5mJbq7G5XhxQn0/AyCkKSnE2D4OowOfIrjC/XC/WpGs
	/Q5e5JS5/wiPdMs24eTx5aSRhhXEkv+4OGEyBtS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654532219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jtnQKSeFGCg9PfbHZv0BLvDkiPG6m4Crt1JSE3KzJJY=;
	b=OAycUWvQxOtZlJrUIOO2Vx52q3bzMsGqsdV/qWIbt/j5mHI8WgpIVWWGtofV6b3B
	iQIQQPAOqjQt5ry5lrMAQ95p8NWL0ERBa8dn0br+5BcKWS+YEA/25QsSMCxRr245Tsk
	V01Y0dqz6u72XKDP9mhQ4rkwwPcXbNBXxTkVelKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139ce2176-3fb20303-63a9-46ba-8296-1dc5de8ec2d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a6f08e344c2faf2ac1688f4f874f79f0dcfd1f2aadcc3c6080cc6b123488eb9
Date: Mon, 6 Jun 2022 16:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654532219
