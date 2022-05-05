Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6ED632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651758358;
	h=To:Subject:From:Message-Id:Date;
	bh=O95e7N8vmdmUJcNEdCxWLPjUSB2W5DDrxkSQFGAZGFo=;
	b=QqkeN/rl4er26GA8HmBTkiOBwFoUH/9Ih9moZKSJg961x+3ttRszNiLbeafjVla+
	2ttYAkYe6vr/tzw68cm/DZ+ItOYMi4MaYVRJ3KAzi0Agq6jO/qeGP+iroflTe7mL7nj
	y+KG7ORr/CZPKKbLt8qSwsqpnrctAUo0wBVRoV/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651758358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O95e7N8vmdmUJcNEdCxWLPjUSB2W5DDrxkSQFGAZGFo=;
	b=bgj1MQtevHmNTq27VsedCQCymzWTQtmo6wNmjxnUCoWZ3W7IMwM0FrWHctDT+AHK
	CY7e2f5fPJBcEV+qL8XImS0L9XkpijiJEenqe6RdsVBHW0es/IQ7A2Mh22DPlA560+Y
	xkCtJOLaChgcbmpk+9ndNxty3lWBNLQ4YsIV096g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094785ec9-a70c1b02-85d0-4775-8dce-d63d42a55784-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a84d4ca3565046b1247ebd4ea4e9f51c73ad15ef4690bba32bb813cb52ac97e
Date: Thu, 5 May 2022 13:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651758358
