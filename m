Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0802F36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654690079;
	h=To:Subject:From:Message-Id:Date;
	bh=fuIMjDX1aMi4oHKuiNydHgzUdtDErkQnHI6F2zA3zow=;
	b=SlOVzZ+PHOEW2tbEe9aE4jhjWqTvbCnhdDMsuESgdVgWcqJTr7TCRt4870yRECPQ
	8h4MIyeqbwnJIrAIYTYGLwZoM4ctHoCNhVzPTn6piLaKUgfN9j55FQwWKFlfxqDDWzj
	gu+9cc6KwoQA7491dBeN0wS+WUwMViJrmBNLOjHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654690079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fuIMjDX1aMi4oHKuiNydHgzUdtDErkQnHI6F2zA3zow=;
	b=Zo5lUtm/DavzmJc4FEjgnJoxAbonGwjR4MAmm5uv/HH8VAEVgd/RJJvCBzvdzv/S
	+HFGwfp4vn0SLloer4eNGD9li5MXo4NmMIKVWU/0Rsn/iU5opGTuSx12Ez4nFr+cHsb
	nrk36syXkrG2ex12bCZLWuib1yyWw6qlO/L+Rouk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814336e226-517f628a-a752-4e1f-b08b-dbc4cbf302f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f90d8bc5dd8aa55ed7a24789cee6a17a274e5121103edf321fc649ba8fea044
Date: Wed, 8 Jun 2022 12:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654690079
