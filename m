Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834A11C38
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB59DC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687610588;
	bh=srOvVs9Ftv5D+4l/AYrla6MpKCCt7Kph/CzOBRQeVpM=;
	h=To:Subject:From:Date:From;
	b=iqwNG0G+X89T5b4pxJfuw0zIct0Q11LhHwy3aLkXGOpGMmBoWQy7e7tY1ZdmIsDLB
	 Tm8j833UP2k9LoDdzOH82V4CEThzSk4pl+F1F3ifgH1+AOmC6IXVOx/lyo+Fok7YcB
	 mXrVsPU3xyPqSBwQgshm2Vo8cihkTxmKhuE8EMq0PGIvPx7eXPmGkwjkyWBWnhTcS4
	 yNC+3ggxSHXm+IkNgXgu7QxVdtqZ12UAxlwi47KhSS8H2ZLTbsMK2mrZq20kGYi+vp
	 hfJPkeG+CK+/+Xe88AT2ni06Xljh6DW4jrGufTGghKJvTeA88RRoJg39pyA2gVMD0I
	 jSntHuecChQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC210EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761058870.10278.6853721291183917715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39c7a0e13fd214e2fa6c58c985338f25705b7f62f3709f236562c48070e058f
Date: Sat, 24 Jun 2023 12:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687610588
