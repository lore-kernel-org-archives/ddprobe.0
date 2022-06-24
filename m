Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07ED17C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656061612;
	h=To:Subject:From:Message-Id:Date;
	bh=ooCRkomUH7RWTjQ3HVpeWhwebxmRAgra7WmJKh10OpA=;
	b=bkqudfkdrz9odaT/hq+GamjmCs0RRNLKqUn2F+bkB8Z48TCPgqkfQQPmmm89miUS
	ayzhKN0WChMx1+Omda5iCQl2zSCQBGRMGwErbh7AoJykuTYvEo7LO0i/43wVjSfiP+e
	79WIVllS41ho8nWRLMkXaDAvoLvNRkarnC9jfrqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656061612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ooCRkomUH7RWTjQ3HVpeWhwebxmRAgra7WmJKh10OpA=;
	b=Y0tlfoOzqaf54NM8ftH9rTf6V+TBtOV0eYOq0np2VKJcW2HusMiYStgS22dqeGvn
	NTE3OE3fvWUuL6vqQoVO2oOFG4ppP0Zt8jiU4vrUgvrWM/XGUaBRVfGsAVGqv+rk/P5
	By/soIiLexlx3OmtTG4teKAbQFG4DOUjCXJx4Bb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194f6d108-26726a9f-6773-4139-8d26-ae390273f264-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a9935e4fdc628de27f00e5e462882bfea7a392ec4246926c5f978862c231a0a
Date: Fri, 24 Jun 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656061612
