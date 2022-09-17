Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C865436C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CC8C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663374653;
	bh=hQfKM9rdEChtld+avjM/zQQV/nrQ3M7aPk5EglmCuFQ=;
	h=To:Subject:From:Date:From;
	b=ctgaPBnFe8SoWaBt25k/YR0kfVBUtw6eHEsrCCZh178N4oi6m5ZqwZCG8+qZmsdqz
	 rWwsaHTRBKiXODE0QVmsN23Sjvo2/eBYisP+lXa26Ba4ErTJHjP7AT+V2sW72fXsAW
	 JOYhRV1dvahH1MZPfhn2NYrIWc5CtNrUq/oFFdOWxWXyLKkYpVPyhH+LpFBGHEjM7A
	 4UohvSgMshi/+AQFE1BVRzVuDYIIRBKrWx6NfrS7ITCFTQB9PbctGpV9LwkZchX+K8
	 ZuDBPtsCK0E5MLmlh03keIOmTS8UqAR8gde9CQeFjFBF4urw0f7x4kGYpesxWm4ncu
	 2Eji+tZYLOIPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBC5ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337465336.1437.1243288889259855422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4711f8ca082fa013cbbf5e6f99a1cf9e9f460c1e7875bffb9e076f0de8c9ed
Date: Sat, 17 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663374653
