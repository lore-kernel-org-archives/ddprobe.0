Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CA06AA4
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659650452;
	h=To:Subject:From:Message-Id:Date;
	bh=Bm/YVqlfHPIkwwy0GMBwaF/oeYC0CVi3TlbHT/FgEyY=;
	b=ggAfkBDmqBDJRdpmi4W7xoEM5wgPlm/6dObK9ykdcHHXIG39OarihdqESrfmedb1
	iOQT9oxI152s/XhjqimaNdYzYF7VVZ3ndznvxhsaxtkNtHITxINZgShWktn/MJ5MsC8
	rEnuSnMY0qpLA5IIVgrHPwKhNTL0/Av6aGmL/9bU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659650452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bm/YVqlfHPIkwwy0GMBwaF/oeYC0CVi3TlbHT/FgEyY=;
	b=H0/TxYC5sI5yeckQ+uhN5+b2itpk5OzbytKavpnsSjqje8oWo9hrFflHcya+im9u
	QH3CwzciT2TICsENE1jER2w8hd4PsJinXe3GTGqMD4koXVBzUdGfjGvOzZii7MCHloY
	cifB/4FqiYW4GtyRqEQaaRUs65IZ4gXvU4RoBADU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ae02c6f-aac22d2c-fd70-413a-b62e-d15ff1b69d6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41419f027400e3fb958e32c17d774e628eb9c0226f8df12860e9ca09c35469a6
Date: Thu, 4 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659650452
