Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59304809
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657279012;
	h=To:Subject:From:Message-Id:Date;
	bh=QcBPCCGIHGdD0Kww6UcTw4efdVnPc/dJJXz17to+Q3k=;
	b=VuOjOp8h/T3wmCLPuWDYAv7ItUr+ew1Z1UeXOT1MVtHRugPgOxYiJ5qS67uvCJcP
	qEiP936lDJWWfInmEmnzBLeiQuLFm8C+V1czQ/mb84L0J+lgy0m7QwJnVOWVicKptBp
	3HKcM+vi7n0z14QrbQn3dJilfuF9WkMG/stekhQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657279012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QcBPCCGIHGdD0Kww6UcTw4efdVnPc/dJJXz17to+Q3k=;
	b=ZRmcpWOu0LlRVeFFc8zGffdDGOV9Xllxv0pB1Hfg1UQ8dNrEd5g+Nm8YyldFsq54
	wPF+BmB8tiyrPGCzqumyfjjxILsFjc8NqAtSBPsE9FOH1OZJc58qBOln5VnbHTEU66F
	5GrE2m27HUK5z/dHl2ZG8EXRFRN66CXNE6KALzpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd86ddce-c711ba84-548e-43ed-8346-3d474549c32c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 270142b37ab224c01c3c4c88b9ce2ea06427b1c2805e3e2786090a3982b0c0ab
Date: Fri, 8 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657279012
