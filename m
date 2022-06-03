Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130557E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 05:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654234799;
	h=To:Subject:From:Message-Id:Date;
	bh=R5VymiDG5JXa9Kl7nuTCKimCN3fdb2ejJjZ8yKLGTlU=;
	b=MnbvuEzMxwsFXiPwVcq+xK5s61wt218W37eP1/WCudHvv2Z2x0dXsfYXfguHIQRq
	kgWgJVDd8nHbltroz3Au8nY1yw+5s7lNvC0hNDojEfkXpabz3bTieQf4KlwOVX6PkCC
	cYmnjrpq440vFBGrdoS3HXYKlI7Le0NLLTsPirqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654234799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R5VymiDG5JXa9Kl7nuTCKimCN3fdb2ejJjZ8yKLGTlU=;
	b=ZurR/skVmfgBUu5ZTYxWtTHGd0pcqMmmZb8vfxBY4+3hyefiyvhJ0sU0p2EmBt/M
	W2nkYA3T7K9jLiacUsbAaPbUOfDKXivsW2+SEi3RwWdycoJJ6Wg79PuUIfOuTlKJXDb
	0AOZC6QCjZyaSCfPFNFhlgPItca0PHvyVRmNent0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812813dcc3-66431c1d-cb88-400d-a10f-2884a0d1071d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7707b09ec9bdb03a8874641811db66b1ac140bacc925130b9d1a02d7f9722b09
Date: Fri, 3 Jun 2022 05:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654234799
