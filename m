Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA81C1859
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1DBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671546687;
	bh=G+SlOpHAAnSddVBES0NJJEjY5RisgpVDm29mCx0ZXT0=;
	h=To:Subject:From:Date:From;
	b=qoE1phoQq7UqITJK7yCWnkyq2Ta70sptttfN7EZAYHZCsKYBFnPCuORVYfjvS8iK7
	 WrkZA7RkH2Rn/M4bptaSzSYVdcXORSiiLZWd98GiZCZ4ljaRWxV3YkRWUPMYr7869d
	 fPF8LbT71Grbs6uCRyHKln1hJxEtUIGlRDOaaETWZeGjMUsDyLvwHTcOo9cmw9LGDG
	 yDbj0AE0FCCqvGO1pVXrqvNqLsPBxtuy7h01uzqpft55YOs14mg9OvRp5Fl424Zg+B
	 8WyO+jNHqh0CE8MvaUNtgXXvlP+Fp9S9dHBXd5oORd8WTIfGp1brvQykqgd/rsfFwH
	 fDaFWghm6GxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65083C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154668740.31896.7218984368923983471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2971f4ae3a742f400695bb51da5a55c4144ecfc406943ae29683cc43484907b4
Date: Tue, 20 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671546687
