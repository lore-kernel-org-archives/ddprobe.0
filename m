Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF253B8B2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D982FC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 22:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686176585;
	bh=O86EsIIvY+pOCW3pEyDGIF5ySFeL+w7lFXDKmMxXtBQ=;
	h=To:Subject:From:Date:From;
	b=Pf3UtAYsSSWU7DV36/hL3ynpaS0SgCP1WP6dYWzILhmIjYYilhgm4XyGMnE+pkBte
	 nqDhLxES3P6BWLbN8iS8d1Z6uuptZEuzQCz3lwE9J+3Q2RZMZoXv0uiIEHmbGVhYck
	 NyGe4j8xdzt3mQu0dD19/EJZTvMiW7tP37w1LGoGOfR1isHq5QN4FAAII73aVZ1RlM
	 O74Cg/ynRHOINF/lj2FYtHcQvfphebo7+6V/WUqBrDU6u+AwTIfmIvjWBUk/BJn5HW
	 r799HnvGHHqru28PXeO7EddcFw+UrJHfeO0Gd/kvBIqXIYXzBvpmK1JkdmZFledrXC
	 TkKPxXwOt4Jqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C15C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168617658574.22286.14144952455470652994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e026332f30921c81263bbf7ba7bd97d9ec9bcb3438ca7b5a60a47cd7757297c
Date: Wed, 07 Jun 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686176585
