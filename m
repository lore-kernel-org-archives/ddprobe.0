Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088E533C2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 16:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652371439;
	h=To:Subject:From:Message-Id:Date;
	bh=IfneHmP10MFKfQLPjNC+1oe25ZPewt9UBgML9K63D28=;
	b=bqpfNxhoaV0KVb0cIuDMGyCLIUEUQsM1ZBH8EmmAxQrCJ5rKqtwP7yYhB2uYALjd
	dgcec9SIFShjPqOC7d5l/SSANOdvD4V0hKCLjqQ3FOAjZgAzYcqFMP/vshwnDeG45bV
	IFZOfi7qOCt7qZsiZ/oXd+OfzUEeWZnNEPV+1UMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652371439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IfneHmP10MFKfQLPjNC+1oe25ZPewt9UBgML9K63D28=;
	b=CtcCkmKqfVUMbQ1FEmlKkMv4FWqnRZq6Qk3TtkwhODGh2SFnlMibVyzzIt2TYX4m
	iaNJkBC4Brhz3YuoGyhl8zY4d5T1vCkvsV3+XmpzpBN2DmAPJHxdxA09dgZNFBza0RU
	yKW2R0kknFfcWHBFlAUmDOuD5cMmMi1/pMDXtnrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9033eaa-10a6f810-8c81-4f54-be78-89f584eea236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe33f77fa71f097d7983e9159929253c28852cf7bba3d717cf59daa6f34ffa5a
Date: Thu, 12 May 2022 16:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652371439
