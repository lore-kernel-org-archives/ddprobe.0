Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355833FEA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661116252;
	h=To:Subject:From:Message-Id:Date;
	bh=UKoTkzazsCL2ft/79IGS6jzVeGQXE06iFV8x7N/mbZw=;
	b=aJ+YGKu/QHRBNUC6335vdduaJmintHbbE25h4FUGU2DnbmC859ku1oRIpPMBSDUk
	t3mmKRtvUc0HVkfQfjc8Yn6TkdaIElHtOmyKplJMZrmMmnScAb8skIN28TWPC8CLUHb
	9s79IQt5risIcJDGFgHX4JZUgzaH1z1mP0kH1Wrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661116252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UKoTkzazsCL2ft/79IGS6jzVeGQXE06iFV8x7N/mbZw=;
	b=MvFypiVLg3yE6cjKyX5M5R1g1Cm/UYVZ4sd1IvVVlAxEVBSd2JTP6MUCDaeCN19o
	sQzGdHijV0rCOiVC7mWnZ4usMIXnO0nDe9ZQYcz8tcpJnoK01y+MlLAbRtwpbMGhsST
	siS5IOkVkRkZkkDqZ1vFZfMA4CeG9AIaODDcTzRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c23e815a-6bfde89c-9c11-4d07-ba84-db047ab9ea84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88416f8847e167e99eb014d512b6e43d8cc474d69d8cf1f52147d52db4b3b97d
Date: Sun, 21 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661116252
