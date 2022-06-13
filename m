Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA10258F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 22:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655160419;
	h=To:Subject:From:Message-Id:Date;
	bh=JFyqmumaeiUVqLr6kIvqYH6FqHSxUV/iXky6lMiZHPY=;
	b=AJHWsEmkmq/1P4mFK+9Waeks+smdPAhW/ZPzkvyf7NGH/1ODfy/w4/ggUrZe2Abo
	mSYjn4XvRAZJ67aRDEVQxVXUVYqo8w4aDDfy+iFXCbKKbvCrSz2sqxNvRhByahJd1ve
	gsH5GdzfV7KnaOwJ+pIch1jSkd/n81NTlnuhtKhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655160419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JFyqmumaeiUVqLr6kIvqYH6FqHSxUV/iXky6lMiZHPY=;
	b=EuNBiUm3+fOjjMFzlX3VuZYRrh1cR913F7Sp8azgW0JHCU+C44NxmjAxe52YFFU8
	nA+ybhOvESSxMPDx08cAoPsEoeCmgSQX0Ix1/NEn9ermLZL9xPTrzzlJx343qxv8ifi
	utdg+OeKPs/mGTqXapWmL1My/YvDwwPkQpqeg/MU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f3fb3a7-90241131-72c7-4fb7-8e99-daf95e1bfb88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e16415039f99f74f234916106625c435fea6898667a3cf03cfc6a77951788d6d
Date: Mon, 13 Jun 2022 22:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655160419
