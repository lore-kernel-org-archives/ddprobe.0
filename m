Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5861361
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 04:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECE4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 04:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685076905;
	bh=ZzqmntsuNZt7kPcOgLS9bgmYYq+5/HUERPKlAorkk8g=;
	h=To:Subject:From:Date:From;
	b=k6R42ZbkZxUH7u5VsThJxVseAyMam3a0zM8J2oMKyyL1dHW0HAVxTnupyLzAXZqsr
	 gKxVDY2rFUn/pXVpignVvXkza/rNgqFp5ikubmO9kpkM/zCeFSlCYvWkc3vJde2BwV
	 VMvx1NXlDcbfq6bm6O+9IgmNQB1ihYJzO1jLSD0hc0Xrq8rfq8Fdc2r2/ZM7RBBTd/
	 /pIO9p0SNIM2gy5Biqt7N4CFr8Fl40riCuQuiEYF+XjY+0fwhrJkvQIcsBfP080Zvp
	 g35fwU+legXAFE6gPe74Qc4Srqz/mawO+BagvVRzjCBYOoTL9UW4vKjSXw2u4mUdrH
	 aHuzMQFgT6goA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C20C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 04:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168507690573.19606.12009756287912728604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31165fb569f40c988922604ba9a4e18f1dfa43b4b3d51720b8edb12e36c2b93b
Date: Fri, 26 May 2023 04:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685076905
