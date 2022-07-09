Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170517E2
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657349812;
	h=To:Subject:From:Message-Id:Date;
	bh=D3aClgRQ+6xwLTcQG4nnXEyw+dr78Ub5LTmc8wW7m20=;
	b=JxMwRL/uZgoFcwLdPJ2I2u/po35xp1ztFilq3lSdsFLD3GRx+eNTR738wHaqjVha
	irBT/jGC7Mmsm9cufmzNxyYj23l14vw4dBbSrhhlxBkPCdEopq6esoSFFtNOYVNXoAe
	ncy0yGyXICGEGJuHdaOdI84mpEI26ufKgqpVB1cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657349812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3aClgRQ+6xwLTcQG4nnXEyw+dr78Ub5LTmc8wW7m20=;
	b=XAf2AoNoD9/TyTgOJ7I3wEjIkAFuED/H8vO/pcMfsHWGEPJv0WHE/AVes6+SckvY
	nPTL6NPpFuicZhtRWDqzD1SryeA6Q5jRm/sPqXMoQ4ILrCRVcjRNVjSvc1FNHLqoUm3
	7Z3Vl37BZzfnJINKM0tAplGOZvqR3IhQQjIDHGqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1bf307a-323ab4be-4729-4353-952e-b27577f76744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53d110a3209a89ec79cfce523df7bd40e71936b3f3f522a8571a4fab0a512706
Date: Sat, 9 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657349812
