Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A381FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 01:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652923319;
	h=To:Subject:From:Message-Id:Date;
	bh=QHNvRsn0ehfhljYJWFoSYZwd+LiSrixYiKmTS+NA3j8=;
	b=SboLEs3srFpkhKlvnYSUkvndvsr+rWT53xFpfP6wmDUqbqxoTGsmHV5sADl/TkaP
	fYiXcOpAQlqmuiS+7FUBBzi8+t9iI6xh4e1R26w2SOM3PLOPYhhPZbQEI8y0J5oBn8Y
	MR8eafBo+ckI6OK6jVBvYjp/3gHvnwQISgL8KzWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652923319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QHNvRsn0ehfhljYJWFoSYZwd+LiSrixYiKmTS+NA3j8=;
	b=aV5emuR8RtVGAliteyl3qGIrD9M0kNKvjwathAezjBl8psr9VJEdfAsS6x+3MgIT
	ctC8FuNiH8AKJeNxayC8xV/A6PLnIPeh3DkPjRcJhD7+7ZV5Pwsj3H49duuiEzLjAO2
	6AxSLpJ4ju7txG/bib4nnF3cGH0UBZ/hhOOdVnCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9e8440d-b03205e1-08b4-4459-bfcd-5e213607546c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4c9b58c93449b6ab9744f9861af3d9afcd61544eef8b1878a51079be0e91f71
Date: Thu, 19 May 2022 01:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652923319
