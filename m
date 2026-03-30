Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028411A23B1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774898094; cv=none; b=BsfeTlwiJIeqjWwBc/j/FowpzLBz1jYLxjoHA85DcSrypdo7NeWjFLA5M9GTiaxDiKniCuYGTP6MMpDMkqTk7HTVBsuGFU8wENZTUvoutVzrVSQ/n83lskF2EvzGyLxzjJL0BpZpRGwF2oaRhBVxHl1DInBdmBwUJl9H/6nYurw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774898094; c=relaxed/simple;
	bh=cJRlIOdk7yA6rRBXaSvU+gNAWCeLTxIc6voyrEAH0bg=;
	h=To:Subject:From:Message-Id:Date; b=Bf95G0QjhW8pzIztZ1YSg64JrTYvkhDqN1s6Wb0YVHxShQ4KX9SqLGldOAF+2Djnz0KCKRpbJjFJ4ir0pDKQ5xeSykmgnW3+Xn5M27bAnEcITdvchqzCxq6lQUdTjWcEX304dxdAVE7ta7OS3bVVl5tW4Ad1Ls9ssdxHB1UZZtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7UlJl6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7UlJl6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D928C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774898093;
	bh=cJRlIOdk7yA6rRBXaSvU+gNAWCeLTxIc6voyrEAH0bg=;
	h=To:Subject:From:Date:From;
	b=p7UlJl6a8mwkPbA7OJIgJxWiVr5lfqG0pRbhqk76sMOa2JvhTeUrjoArb3Q4RobwG
	 AO7QstxSCux/yxChu5dBvhYLAmWgwjDPVUebmFBoXpmAyYS/tZOaPLSXaPoqNkXRoe
	 s+su8KQcMSKuX8J8A24b0h9juzcvGD7Dgv98XLmaTn4LsNRGfH1xhf6P4FwDwUV3PB
	 IPGzVXt/xnBEScqj8t5vxNOmlZ93ClfSVD/Tj/EpS10Nhk1WmON6VPFlcQhXlgS5lz
	 OkS/LseIVVQHn9ikTalJBhXdPbV7BtbHlGIBMNPTrM15xOTds55K74bvVSOGrD0HEn
	 VmBM7E284nFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3F1061B1B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489809358.22224.9773083812241782317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ac88dd785b70c7ac111e4f1273274cb5b806a876708141c0391ad3592734de
Date: Mon, 30 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774898093
