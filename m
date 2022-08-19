Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535237B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660887652;
	h=To:Subject:From:Message-Id:Date;
	bh=a9ZUcKxTDl6rz9LiKv23R+RWGjdn8zw1Vov40O7kXlc=;
	b=gfOo6aXRQhTyFng27V45qMPQWjOeXIRWrqq+Q3Rpx0deds4+VMKK86y3dDwQe6gZ
	GZRD+1JJGwa3dv/a7eFesLmGu/681U3xnl5nx0pz6UfQU9hzzgOO9VVyNdqzgR31dYg
	emQzvMaXH63LZLs7SNBVlgXvGi5H7vXCmOyALApo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660887652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9ZUcKxTDl6rz9LiKv23R+RWGjdn8zw1Vov40O7kXlc=;
	b=cYUMdCwXUi6eIPa1sdQqU7GMWzHjLUO97soA16dGp5dQ3WeFm7U1ychB9NVrT1Ks
	KnNPUVRdo3Y+vtc3hgcYJ5uQV9QxsSP+ihBXCopztkhm2VKWUv4mgH/I5SnruGfAqbg
	+uluphi9LVk4o+lf+e5GMMryRCbDEwasSBJqtgPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b49e58d5-f675236e-d4aa-483a-8a7e-063b47c8f914-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd1f0802b30ab94dff5eadd5901e243711fb98dc69180c2fea63306cc026a4db
Date: Fri, 19 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660887652
