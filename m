Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5638321E
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D32C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665606653;
	bh=45viGf6LXCRWt2Uu37Uy4q+R3v/hl/+rWWvziP8fuRQ=;
	h=To:Subject:From:Date:From;
	b=ZRt3O5I5ZXJxz7isdbshn1mnXE3aTIOH8wkcD7TdY5XI1frlATKgLSQT1BxuEk50+
	 DIm8hTHg75obBYI3NEH+7cJOw81K9uQ3vPkDmvbigKobL6Ykz+qsxCr1FrfIhvUnSp
	 I4GliJLIU/l/5CJsAb0CsvBgfZMmluJFwIXFfttD+hCdznWa6OphOkmbw6jcVqTTya
	 5wzR2jGglPjF7xsLMlPeRF6GtPgWtEs3h0fLU6pe+8kV58SR0JlhSUIxOjxmADVMfz
	 g5HBZvCNK2rVuZlO28GE4lLvYaV1spaFekl4sjxk+y2N3HEsC35Iwgf7L/eRyh86aK
	 IczE1go18ZElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CDCC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560665331.32113.8254754438639582460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2abe08a43d4753f60483bd34b4614046dd064c1fb8c0c6f1ad46437d607013
Date: Wed, 12 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665606653
