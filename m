Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660FF7C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659909052;
	h=To:Subject:From:Message-Id:Date;
	bh=OVfXZ94wnkXPY4wkLYyGVQqxLZkLh8wZUncPvCLDdvw=;
	b=j7KO8TwzU+V10mFMIGQRTx2xKAOB8J40O9Vxf9cRdPN6/JIBQC6XZNXXUQDloVnC
	ydELvb47WknyKJArBpMBBG0OyAFM/g2sjTdZSYV7rpBlnkN02jnT8xYiiU3JySgG1rQ
	jEg0m91b2gbk1NckrTXr6wQyTtY7zw1kkc8ztedI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659909052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OVfXZ94wnkXPY4wkLYyGVQqxLZkLh8wZUncPvCLDdvw=;
	b=SkLDO/Q3Kp+Cs3R0Kvi54HCJTXHJxG4CBNvWr/YsqevbsZJieVj9BAIlSuGLiFzq
	w/5JqsTUUlAarYMnT1AaTJ+6KfCg6O8enbWhGekG3GfQyC7ABXKK/ChVeBmJl6cWfja
	MIfEqvBXqObZVz2UTTqljzJ8Bq9U7ipkpwzeYTEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a4a18e4-644b5b21-0587-4636-8f71-7252fdea390d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1afc14e91e447fe71c8b219a1e20de2c4a88b6fdbf7da6be4c15d3ee5bec66ee
Date: Sun, 7 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659909052
