Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66E223B1
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A709C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671460887;
	bh=Zvwdlxt1ECs49uxTf6G1WH9BlPMGqRUftxoZMyWRwVA=;
	h=To:Subject:From:Date:From;
	b=Z+s6MY+V6GEG9jxBGmTjRJDyRi+NeQ3xXen1ZijewuNH+eGyiHotLZsV3lYDUnnvJ
	 Kz6eLAYASJKS5NIpj/aK8HrP4ztLh4XwuOOEC+yOnj4h1GGRsSCS+DpAOwoX9C++kL
	 HFYr0Cdgujvr7lrQ1A5uvDipmIHBrvi2kXAC0Mf2es8RTP5oFALxyf3E7Fi65Eej0u
	 4MTEgvo3VM95TKIQpZwXbcH9EXKVTRlkydFNtviJNMrmPISxsaRK/D320W9OiqQ+G/
	 gpI3FBwLa4V/eOJX7EUa0azo5gVIILAmUW9I5fk2ei+HkyVR930kc2JUdvvDK2bIMC
	 NBQWQMHVR2wKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5BBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167146088738.30107.2798050349746017608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bb391b7069d9293f83abd8f95e1850d5311376ce070df3189c925d1f580608
Date: Mon, 19 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671460887
