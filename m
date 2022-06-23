Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0367F43D9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 12:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655987699;
	h=To:Subject:From:Message-Id:Date;
	bh=tfzAkzRUzUxD4pDBBW15U5Wva45mGRqGjQmJv07JJ7k=;
	b=kjxWcrXdCPC8gr9ENE/+ZIsELSz3Cz2M7983d3i9cB1XCF5a3iSwah6qAzDYOKDF
	Cf/ZiALgkPUqdNwEUS4pDUuD+nJzxPuZ5UqgVEP1bT8jToc7IFBcsIFkPZmBxHhoYz/
	U8HfYzdrbmvv/QtDwNA06PCVaZDiyAAp3SScFYA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655987699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tfzAkzRUzUxD4pDBBW15U5Wva45mGRqGjQmJv07JJ7k=;
	b=Z7jfHcya3Yb7QuZqnOTDpJjJxRy/Xsp6CQkRCnrY47zz82bOegLnK71+SKYXuCry
	4HPLAnSgS52T67ueY4Wn6F8T0Mg5HnLLhi6gsdiSuBAcdz173GSZbPlDgMND38lo4tJ
	fu6OgGoOFPPyiBF1j/n4OnwB7ROX0/Jz5pdnzsnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181908efe24-20850318-a269-405b-a2f1-a632414d2b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de1d142fa8931009cd48dae7f0f798949419e8db211dfb0f9b87c4176aee0447
Date: Thu, 23 Jun 2022 12:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655987699
