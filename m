Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F534420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657557412;
	h=To:Subject:From:Message-Id:Date;
	bh=QaNA5gjOdTnq9LebFuy5u+knNAssC3wZSOfX/CQCnQA=;
	b=XUJql8241aWUB2pxI4VctIvNRF1JQ6ftsgXkrUc728GGky9qOQUR/bfTtyGOvqhK
	V07JVJl/0sansLvaQ6C54xg+4nc42YU/C76I1coYpJNgkLzwxmcBlDp3l7DSsQzllyp
	VkVCz3yMnY3zUFqg0sasroPqQeiEvnjRKm+KHPWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657557412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QaNA5gjOdTnq9LebFuy5u+knNAssC3wZSOfX/CQCnQA=;
	b=ZWobXO3rDuf2LTHzJ2DkYWPVo71wlspyREPY0oDsRrEVO/dl/cmWg7p4nt7jTEMz
	BdhnZC4k9MHab4hZWqtSSkngjIt1A43x4pum5AFUlwC8OTfq4kdvAQWOBJyc9QGzw3B
	0hCgZcXOzM/MIxT8Uvuc98Bf4bqasjgGK1b9DLyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee1ee9ca-b67bbccb-cb44-46fb-8c93-a6f0755e5c0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 931b49b6e1ab35ea1fa78ad71317ce27a1ae1f337dc1d7606452b1b57dcf444e
Date: Mon, 11 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657557412
