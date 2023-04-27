Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5462B8827
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 21:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E1B9C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 21:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682629326;
	bh=HuC4w4othhmcndtst6vOea3L6/3BIlXSSszoDuOK2jM=;
	h=To:Subject:From:Date:From;
	b=AvFSYJHh/dto0axUY6db1WOHt71Dccx4Fcb1fP2VyU0+oELWxf66CTTaBv9mdDyrW
	 IaD8HiCrqckb5UXhTFu7EH5MTxkXPHiUx9FKb5zlROiasNt0tGLCHhMbF44o6x+8Ze
	 yBSULXo3ohxQkiEAldb+5NihZbBBhfQVkd+t2adDvgJz47o0M9p8c3eIHh9MsaI2eh
	 gvbwnR75p6SKonO/0NoZjobbPMiIF/4PQFrAfjnfI1WqeeEAKzD2z6QSfSRrf3bF6u
	 S1cGkEoONv0Zs9E5bl7CH2rIMeYHKEGLBcL8uYGhq15xnyIu3aGteQFRVkx3RC6uFy
	 CHi6ocXGws1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD97C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 21:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262932581.6202.9627084055419019760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3598fd9412a7d323b98b2fa4a4718cefbe0017c075349674a2f8fbe05bd61d
Date: Thu, 27 Apr 2023 21:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682629325
