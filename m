Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBBD11737
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 13:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D401AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 13:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695992768;
	bh=AIfQkHg02m4mU+VC3jZMC0veQY5zK/w8qPNBN7jQGm4=;
	h=To:Subject:From:Date:From;
	b=kCrg8VwIzSPGIo2/MQHafjUBBQLplnS+B70RSJAPqKHW35rw+FarnCKn/EQzA89ZB
	 IrXRk6jRN+L/lyPC5rZpV+kM4uR7ejkyJpmN7qwGkv5kIB1BKrviqgG5/qpR4jLxs9
	 9d7VUjslAXUPbxDyw/wFvTMyKPNR2Xs82QdEw2xfLc8cJEHM6twnjCuLqqRhsN4Iwi
	 Xyhwtj1tROOJAUp2Nhp5smZFtjnbQzt1Ffn1EdRb6YOO69Dv32XC7ljNQMFyan3qfZ
	 NxrH3qIhf1I3CKTj2eRu7/ho9wz3B7rLHtSss/6WWc4sutXstsY6O4Wqvw/HlFe2vU
	 CLWxfkiOWT9Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5581E71D21
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 13:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169599276869.20959.13431442783641999787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c39c1b2a93dfd2a83dc85a7e342f83b93694b0b5bfb0768c2f1c7167ad27199
Date: Fri, 29 Sep 2023 13:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695992768
