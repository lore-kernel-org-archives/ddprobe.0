Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7AE1FAE
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 06:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF990C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 06:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678689425;
	bh=EcKiW3J+e3QvieQbKyuj92/iLA0xcCL2mdWaE1c7JVo=;
	h=To:Subject:From:Date:From;
	b=P64vZBGH1dvGEo0ykiu4FcfPFDlaU4VAX5AAU+LH132V1KYNtvHvD3x6oIIcFIHHU
	 YF/4PltUfDM4kFZi/PbzzD7QBoel8dyUt3ryD2hal13V2RtA8DEuvedwkXvdQz158M
	 DdI+qp0xMcMOB5hOnMMIREFZpWggYn2wdL6wOeBDXWDOAYyewUffVVgzyJw/MGj04X
	 7K0ldJ8F8gX7fFscd3N4Lf5taCx3L53EbyIOG0L8pzADoyyNFxzjsOG2nmsGtOicso
	 gl5V4hSoTsQ3auu/QfWpbAHlIZnV5NmMaE9MsqRcPThE318GuWKef3fO/eWSiqnMxB
	 GOh58IszuAP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF72CC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 06:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167868942576.17474.8930207776223942960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f433222f454a627ade1f5c4fc609e22499e0bc58e59ffd3cb2984f51b897eab1
Date: Mon, 13 Mar 2023 06:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678689425
