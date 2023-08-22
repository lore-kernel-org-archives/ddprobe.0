Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5956D2B554
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 17:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B99C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692724448;
	bh=bQOlQih+lWEPy+9Khox18cWg+gX+ak/+tSrmpGmbA9g=;
	h=To:Subject:From:Date:From;
	b=Tjq4phcT5bZlbmcu10nAaNuALx7UFLYcMSoewTMzZKY3/nIHUegUx0P8kRFtkjebw
	 lIgayCf1hA1aQWbrt1oAxnY8fN8MABxh70Z8AZBGJVrGCsMv+P8hk6hJ95EkkMytK2
	 RQXh2TQo42SqqqKRZn0lBggSuAtjthqwhwlZ0Gh3+JdNkfGL6l3lletrBx5+IsFbo6
	 nN+AA0CTUVlNTfC1YXwqxA4IRCAouffudVAFXmaYl0QE72LjZB1q3DRTbohQFrYzcf
	 WaAjvWV379VcUNWh5Q6yiJFDBCBCbQHc4nLlVzwLVT+Q1Xe1fkA8ff53+obGUF5gSj
	 gOM4WMssV61bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B687FEE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169272444873.19028.14289952587544868290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e00206bd0b1111c9ef454a0cb71a0004e500801ef7c5b25013e8463e76db15
Date: Tue, 22 Aug 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692724448
