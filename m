Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7CF7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659421852;
	h=To:Subject:From:Message-Id:Date;
	bh=aR+MvmOy/Zo2APIoysZ5Mohzkw6VqhF5lWnJQHsmyqQ=;
	b=cce0BRxabC5hwdlNQ3Bf+miSUaecfbhisJ/sYGtQlrfLp6BvaatdCaoJSBnXKxKV
	tZDhFhFsBylnyi+eQeP2KNZwI7wqBY40Eg6rCvBlemuzAK1AnnUEDyUgEyakYfhGmJL
	g1XEVJmMaonuxrtWKwerzcq7Qb2MpNV02Ura+IBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659421852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aR+MvmOy/Zo2APIoysZ5Mohzkw6VqhF5lWnJQHsmyqQ=;
	b=IZ95JyQcvtZceQSlNVV5HsAMvtVn4bDJRhj2QxO6k7VcD49tif8BapPUGUrxc9Dv
	nkX/z+E3aoadnXMVYPeF1Rp8opkrdrO1niKhbxIa2XuLjJs/9gCHSndoSwlAfVCZr4I
	1nKbFKR5N6HjPwqGkT4PQ1xsNmOLE8orKhSZsA/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d400385-2fd16713-3a14-4af2-87b1-9b7300142d5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b22410b8fcc20454d3bce610e95b1c0f04b1b6eae63c8ab0e100a843feeb1ecb
Date: Tue, 2 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659421852
