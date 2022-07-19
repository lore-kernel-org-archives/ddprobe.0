Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1FD4688
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658250412;
	h=To:Subject:From:Message-Id:Date;
	bh=FDeUWJAFchSI0EevECSsxRmPuSz0ELOh8YLw/VrO8dg=;
	b=XDOXfPKK3Yi05xACjnNShLZIiJoXhr+ZoVFxXVOilU4yTp2jgG0s1GFaY6NNkLnl
	YH4IlwaDEsKuFb4/hZHw09vguSA6ziW19cW59OCmX1gFhym5j3zDAVg2kqiyN4Au8Hw
	n/amdJuZqFR6T/Y114dtzfqaUO476HLIsNHyIVzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658250412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FDeUWJAFchSI0EevECSsxRmPuSz0ELOh8YLw/VrO8dg=;
	b=hETsdAY0RYVKCvv5QyuPVUU71PQcUu3rEtw1bTO+6sdM/8KwP7pvb3Z1msty4I5g
	q1cIOvZxSFvgiJE5Vp2cvmTKVzTNLcBzxWRF9LIdFtPPuWKICimDCazbLWayialU8dY
	rhi+Ftn8ejG+5LB2oeYAj+Z5Rz+v0H8Wv0DXYiuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182176d40f8-d3f3d048-f699-4c76-a19d-e692418477a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d224ecc1c0c3431a40bcdfd4832614c7a5a30532d8d900674ab2b3caff5bc79
Date: Tue, 19 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658250412
