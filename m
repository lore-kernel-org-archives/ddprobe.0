Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC2A625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 09:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651744078;
	h=To:Subject:From:Message-Id:Date;
	bh=b5I1YqZYC7Xi4h4e7YYKGfvSgYdF3PBqC0frXY55gCM=;
	b=Ys8ryqDGC+QlGSKWcRi6tXjh/TfoYAHMFwGOo3H+bA5yluk4xkpz2rdrHKWPBuLv
	HkVnDvb6q3eL9s++JJ+8sX1OOt0p4ZfFyLTV8eGV+y4BkjeWXdv4Ye3Hm8sbRBbyPH7
	pnMDfXuBn6OOTyrGG2xdW5/I6oxbWZvyyiJ9htAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651744078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b5I1YqZYC7Xi4h4e7YYKGfvSgYdF3PBqC0frXY55gCM=;
	b=Qc20X4FJOUWxzHymYDRkZk38Dl+IKfQ4yeGzDgfviYjjdtPpGeVx+go0UAq5Lh4V
	lHKS3cCextoG5wh51fQzOzHI+61/Y850IOWSYgEZj0TB8ATb6VNkjrVziTfKZMKQFKG
	u2xvtx5wznU6Gb8kmkH+nzDdJZIJLFrxg5B56ojU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180939e7996-088088e0-fc45-4020-9640-b467bec45dad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9c13bc7e142c04e6b2a18c8e2d829a92458609d3344242f716472a6ae36c6a0
Date: Thu, 5 May 2022 09:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651744078
