Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B198863F
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACDBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664289053;
	bh=hG4D+66/M0YZecBzQSBYx8bJlFoS10EonO/C6nyFMvQ=;
	h=To:Subject:From:Date:From;
	b=G2XgP2+H0IQEqX/cs3uWDeYGrs0gOzOHuKj8EF3m9+jhuQyUkxERK2TIxI/T9PjC0
	 5MKsNZtA9ykijJPONPY72j0KPPEZtHEVWGFyHgmWz366nJ2YVgvJbasUz0ZdYRgjCb
	 MsrdPyUS/dNKYjZW7PdMpprxaSnZ9G73gNFtduHeXEkvi1QDT8URD2b6y2oUHT8bqc
	 70r8H2bexJQLuHcKqdv0HrkFghtX9cesAy78N//b7vmLF0ahGEvgQxSVvW8h1Uqxtn
	 KtOcFChNDnzHTKHx5/N3dgl3SCfHvGB5uovnDftshJBnF7/SFL6uZnFnrHf+5lRRnS
	 1ARo0mnyfQkLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DCDC6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428905333.5023.6559362823262027447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796fe2336820ca34f6fb983c34fe484926e53770d39c5dc2a52491912a3623cc
Date: Tue, 27 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664289053
