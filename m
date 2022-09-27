Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66AB4A18
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8EDC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664307053;
	bh=7XEjR5PeH80AI6qkryoVMHU8yATRlGFGRt82Sx93Km4=;
	h=To:Subject:From:Date:From;
	b=umQQ9LD5GltJl23cWhkUciRukHl6/g1IbvSaE4wrrvMpjMiB+FtN2i1AxI9d+2FcG
	 iqrLXKBbZrvF+4UTcJkCPjRLTNXwZUkl+BxQZTQFT6Fjj8mKfkEp1wj8QmOSeIGkIZ
	 0Lh2mhR2Hnw6t6cbVX/RnuZ4wZ4wSAmJNqtr7P4GcIV4BRUuMixvZP85xoEpDGcctS
	 9QwsVaLviqbx1KVpxs7QBzqZ+8e5GNKLfeEsLDIpXMDLacIQcY1yotA3AyIJksszfS
	 uPh0UD++HNtpJvPbljbzEVSuMATJ+zir1DC00M5Aadblz79Y8X28CgfcEORxsRftuG
	 Qctv1O7G8TkeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514F9C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430705332.6272.17580457216140225046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e8ad6be3ff10cc2cbdb9689a3346642266c6a3ceb3b7290dd8a8eb544f33b5
Date: Tue, 27 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664307053
