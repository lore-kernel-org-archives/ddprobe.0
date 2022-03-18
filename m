Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78B94C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647616885;
	h=To:Subject:From:Message-Id:Date;
	bh=j6uXcUi+veWJGGk5V7bTVLVZTrZR8l0D6pYntum9azg=;
	b=P+HOXzpD0GLO0n1D3Bbx1XiZFIzHPcoH2g+V8dp0+qkDRBYvxErEUShg7hk3z2Wh
	72BJQg9L+R8JsBz+K+Am4o5xIPSG7jMKVaDNgojx2kGPRKz+Lf4JqlE2YvMCoyMi8YY
	aDyL4JRUqCajmBVMwCtuoUfPCINe9P6zWAl663LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647616885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6uXcUi+veWJGGk5V7bTVLVZTrZR8l0D6pYntum9azg=;
	b=bX6cGKJBFmUGc+Ef5+FVt9ehqHdQeA5Kc05NbNjflweiDpq62S+GbJLiTyf3mYi4
	uaZ4E0erOxRrcVPCUyS2HCbVn1/QtdDhu9cO35PmOprue7fdeR+auIe0yUyXaqg+wqg
	6CnWjK1UGc+S91i31KnM5cNXJpaWRCoeRIGZPWnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d9e8023-5aa21be9-959e-4365-ae0a-5f562ba098c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff7f1540f91c9a6e0e7289776ac4fea2fb98551bdd386a6123880f4b869ed689
Date: Fri, 18 Mar 2022 15:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647616884
