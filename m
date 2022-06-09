Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426863210
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 16:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654791779;
	h=To:Subject:From:Message-Id:Date;
	bh=7O6DdCXA6g/mrjxOeKg+XtCmTy4VoMY4hNsXG6O/dlM=;
	b=MmFeyeSv2dLBaFLFosIAbRJMbiBwCCKA7IexUyKeiXXeLh09z6IjWe/7WTY+RQEo
	v9RafhBqsdT316Km0GnQNEcFg5si2I6CwqATj7f1gkSXb1N7VqimO6Onesd7qAtJ8if
	YvvWGJGLZFpnKppN2boM/kfnxYSkwaZ1nL56OeZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654791779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7O6DdCXA6g/mrjxOeKg+XtCmTy4VoMY4hNsXG6O/dlM=;
	b=DyyQP5WXX6U/PbjUXa87FgJb9OBUXh3o3riM9YZ7X5bEFmcex6eQPn67CIY1rxwb
	FSY2zaTzasVCmH8fQu2RlM55zZVvO4UkdMgvGcSgARf1BuTq72DPjs8MDunayg5Gmio
	SyNl81qcUYwJ+0dw7ilV04k1tBIXih0G1oXy3Lng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814946b3eb-0c5d3f1e-f5e6-4d1a-829d-363cd9cff8df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0ee2fd4cfd53ab2f01c446de90884f615e784ddf912ae4013b16124cd217f50
Date: Thu, 9 Jun 2022 16:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654791779
