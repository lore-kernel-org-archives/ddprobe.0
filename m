Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74A81FB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655998612;
	h=To:Subject:From:Message-Id:Date;
	bh=RMv3keoe0jIE1L6GvVs9Njv+mpEIhjUsXcHa5idM/Q8=;
	b=Wk4T47yanekbHhT85B3fCF1PeenLk6vo7aKzmlhvJ/gRMcGgwHqCth+DEBcZ+gpM
	zpP53ZEgoaAaWiyfiUoNDkKk3KB2onU/VpYs+48Ry4JkXwCo8TLJnCswMT7jUGKjwrw
	aVmXzh0MJkEjhGrmLvzrL6WCtr3md/PzFJ0S+1wE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655998612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMv3keoe0jIE1L6GvVs9Njv+mpEIhjUsXcHa5idM/Q8=;
	b=SsAvk+yvCJVRz91dHoa7qxj1ZRqx5CMSz3aD19cI/uw4bdyh3YphJBH8Pseozyrt
	LrWJSsAtbah8Gkdcpr6vL58falsekmBG7jdEjyu5MGNJHDgPGE9Qs9gOSAz9JF3y5P1
	GYKyTREWUrXtATEoW82CvzKI2VX4Bh78QoYhJy1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191358333-5e175281-083a-4a6e-ba9f-ebeef57ed92b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f4d4912b24356186f9f550f31b5a6069ae061b87c041335ff9a81f411c5e853
Date: Thu, 23 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655998612
