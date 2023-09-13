Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD5A14F92
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 05:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9C4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 05:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694583848;
	bh=j3XGr0eE0GxiXjJSies/abwyvF4vDN6Qjzzf7qITBHA=;
	h=To:Subject:From:Date:From;
	b=nCH1cD3kP235ZukGZr6bDKV5jai3W1erONPKANBGRcQWoDT++C7dLab6+I6BIoyOm
	 fJHf8XB7vSW9PJ+Rq9t8W/uOHmTXt/QApHLnzcs2s3a7BtYioSRuGyW5+dhs6nNB0j
	 kyTVbbH7TdHPj8f/ARDDiGLRee0X8cmTGQWLoUIiWjhWsRzM8N/pJo0QehjsrwyyQf
	 EFhqa5wstzUAWiQ1rNaTZE2+zv2rxiHsrcErLNlCjEByC7e7HDq+HzqXMx9dP+cKVI
	 vuqYfDMtLT/QcnJMRY1XqUQE4IBfwFoekUTFM0l3QYw7B1KxXA8ybRzLYzhl2XBZSl
	 vB87pIlTpV/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3A9EEB593
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 05:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169458384873.27333.13197243079521827804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db48d1b28847f7f3aa3565acba712ed3228ba51a3ee136c787327053bfda8ea
Date: Wed, 13 Sep 2023 05:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694583848
