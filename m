Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A69D4A02
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661191252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ym6ddHLipvKhCUqvU8Kfm29tm2beF7G0sJZHb/YxZPs=;
	b=X2DEBXtY+qL6CENiHqvl5VB8BjwoxmupzL+iO1CJK0zrjNRawRwkqLkdMhyGXZPb
	fTp1MOR+wmP/KVI01Qf2PDoSDISYtC7KHRkAZtoe+IeyTPK8D0y64uT0UFnQYZFOYte
	8wuZOcdNMe/rGjy6fvIvdjaiTY1KVqFDNMDYXwsY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661191252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ym6ddHLipvKhCUqvU8Kfm29tm2beF7G0sJZHb/YxZPs=;
	b=d7amZ5QZ0NFr5LfPLnKysVkT4XUuIfavcVkI8DxM6dhzQXak87PKdaom1icEKbxs
	0L2ts7njzKpZ/nJp6YDjJWbOJ814mqB6f66nmMipnL+lOLBOjhcns284i43fnv68OQF
	ORtOkK8fkfHSAJurFddE8k3Cqb3UFT5oOtL8/9as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6b6ea2c-e65da010-6efb-4279-8ed0-37280bba9300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8503d251d947f3cdbd1a80f5d13afea24c06c81d7274f447c09adae752724362
Date: Mon, 22 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661191252
