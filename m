Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111F315C3
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMO+Dfi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD22C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703741296;
	bh=f8e1jz2FJMRO3tv92cI3qeyLmAg4FXkobMctRirWusE=;
	h=To:Subject:From:Date:From;
	b=iMO+Dfi2wZc6c2VdQW1DY55jkwylEsJJDBbfjk8fIIy/+NtWawZ4lQTRIuxokvXGb
	 k5z/nt+UcAGtlsHhltJQCOK2YDnGixtUWTrCi+VMXcUMiOlHyq8d8B+b6yqmvDwZRl
	 PVxo4+AbQclBfzJ4+Ej/XSx/JVHTg3Ngd2YyglIxZFzfqtWWfp2dcxEbkMdvX1KWM1
	 mpS9sss+A1yjWd4CPs7sx2ZWgdGqHJOzzXp4U8aPdOeFN1gazb42iwSPxl8nCZUP0Q
	 n22D51PuhD5p51UM1LARDmQbyYR9MYtVwSXlUbPiqlD+dn09daidAsKrI8bTqzPpad
	 ioumsUFOeZI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4ACC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170374129640.7741.12780622099438820696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884a02d061311655646bc217b5b070bf8cb3fd41a3dd748aa3f8979b7a39bed4
Date: Thu, 28 Dec 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703741296
