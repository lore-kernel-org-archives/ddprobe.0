Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6476563C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 15:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4942C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693926848;
	bh=L6jG8I8O5jsof0uYBsEZ/QZ6zB91mDliuL3UhEN0DcE=;
	h=To:Subject:From:Date:From;
	b=TpIINyR7SR4SNeMA+IGvW7EW6GX5Ba7fKVMYqp61e2DOSGhrAyoeFPumAqCnKN+LW
	 HibxemQVA52aDvsPxG6lGfd8LwcyQzFpHb6oJ5woxSvSZx9jvCpkoGfXuev9jlnChQ
	 c9zEyHLWwnvyztzDH6jQe66Tx4YsImjzoUQRxtJX0xOQ/k0s3C+9Y/gwTbC5nPDt6M
	 Lk4f6nRBVpPOTq4jx5TtOiuDodaesr2MA+64p3DZg18wvkIscxtbU+Z2Zz5xZ/COM9
	 aTnqjZtCzkjfzETyjRKUSt0ThYRnFl4xhJaGWHQOhDC3UJ1O/pNx6JdyiFJeBnk93S
	 aSr0lzPDBq5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A08C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169392684866.31934.3544876514201374573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf8b188d9a5cf919f4268fd6cf96595d3b17a95d9a90562f9dc788a18f143a4
Date: Tue, 05 Sep 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693926848
