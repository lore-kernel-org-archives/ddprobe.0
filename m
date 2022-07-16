Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467D636D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657943812;
	h=To:Subject:From:Message-Id:Date;
	bh=oI9sMgKeU5OsVtjeol+uM4lDCXGjl29LJ8Gzn+NjWws=;
	b=Zmf+BEUEJd+UrtFF9eQ3ZOM1GV79gOPH3hyM4lx0BW3qjhed9VFdBurTVRtG/aMF
	Lsy7dsxVlig99dy4/swvthcpWEAh9kYgB9kYR9EHv33x8ztyuug7dJZNkjRcP57L66I
	tCLBxooWxqm8fmvqNKpSTi/xNY9110pAc8fKwpDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657943812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oI9sMgKeU5OsVtjeol+uM4lDCXGjl29LJ8Gzn+NjWws=;
	b=CZ6ojGXywHPbyGRQP+6Jhnje21BJ9Rk7+WVXd30qQfrYiI+khNJRazhSsnJf14cT
	4spb3YmlkIyRKhDyFFU8JEdhkH5ieR7FEsL4yFcd44gQO/xgbxNolEyBpuaXSzosDyo
	hCe+k53Kp+7xaIvdzOrmBYi7n/qNidCTqNILOIHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820526e949-d984b0cb-5fc1-4426-95c2-f2f92dbc536c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d7e30979d5c673786b2109704fab0cd2d79b3ec928313c5378087172f98a07d
Date: Sat, 16 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657943812
