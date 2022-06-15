Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D751854
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 01:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655257379;
	h=To:Subject:From:Message-Id:Date;
	bh=VnDnB3KCh/AsyMOlQ+taSYyJlxkqqsqPYXx0+GUrG6o=;
	b=Zx87JUCIFBr4E3127z6nU6fi8OzIzX+VLLfaMYMAD1zIBxkhvTeB9SPCLPBtntc8
	CWvj4XK0iMsx3V0K3AOWcVvi7W+GUYUhHvX1wdl+xYC3kY1C3dFLkJYj51SJTi3CwQk
	nwStINEnXfkPwrf7zj6RqNZy229hP/zJgEBXus1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655257379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VnDnB3KCh/AsyMOlQ+taSYyJlxkqqsqPYXx0+GUrG6o=;
	b=Vc5rXzLk5peeTypS/mKxvdkhfnboAO3DVYSDJSL8a/Te/7FnWyMTu6ccFd/1QJeR
	bSLYhw7uNDdM5oVKFsVkzXz010LJDcI1MXJj22lcrKNR31TIt2clUDo/TmdPPkYlQjm
	StPAFKmgfcaUpyxeRcBx4oA38DRf7kk55SO6DOCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816507319c-eac050d1-7196-4dc4-b539-dbd499f531db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f998c739266be17790bb0a37ca1728c959bcf8497fe66a1f0d4045311a5bcd
Date: Wed, 15 Jun 2022 01:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655257379
