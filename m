Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A3E211E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 09:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644659417;
	h=To:Subject:From:Message-Id:Date;
	bh=4/KfSmDVIgVyO9Xui6IF7io1bb26MIbx0V87L5cDC/Q=;
	b=k1FsY9RyyOaG2BSsU0JglCm4F2++P2ziznwE9EZy4OXNs1ybEN2eDQtHNp622CYg
	bt9c/uAkh3IhfKB/vVdhnFoFaXJNM8MPaFR5CWavBPgcjVu3h/x3dimrBXlYvjjzhv/
	MHQeG4Dr1W+mbutYW8fRh6+ksjuCKe0FW0ERe1uQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644659417;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4/KfSmDVIgVyO9Xui6IF7io1bb26MIbx0V87L5cDC/Q=;
	b=YeqhXC1mMnU/UtQYEwAsBuLaEXTyH4HXgjTNet9UYSU6+qlw9zPsZbr/rmQCANvC
	zRT3I33kruRtGZGt7vfJvVQJb6cjBLN7pWcFEz+stDFlqhWm9lqGhrqFG3DdfgKcqDx
	xiykihePNZjT5EVkjWHretblO7yz3nnzkEh51WMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed571e38-f1a5e876-e8ac-4424-90b1-3161bd93b343-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e733dd173bdf3e7e68304ab9c792e1a3b99c89d200df45068f0d981c3007f759
Date: Sat, 12 Feb 2022 09:50:17 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644659416
