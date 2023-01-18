Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D06290D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF95C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674039087;
	bh=POq0JZjj3ajHicJpe91XrnlpFPhyALMDRAtPuetVtDo=;
	h=To:Subject:From:Date:From;
	b=AWW8Y13bt+XQoKGMAlUEFPxpOB2IoF3g6hNlLq4HzKypurascvxib1oPS8gThauqH
	 cQV0kjP7Btx4awtJppncLnBf/+fD0UYyExvYtJOn43dXvsWIwczjglUpza02NdZrf6
	 NuIOimYYs00GAOecrF2k2PDOA1xuo85Utcq5yQ6jWW7pI3XhrqAeKEHJ1frFBgACfW
	 8JQk1QGhNLiGXDhFD+45a8ZfX6/iqcFV5ntrUy4Nrb5nf1RjwaCSGd8e/Z97BAAevK
	 0c3S0rXKVMVxdcA58iovA9v/I9lDf+jptwOC6HqDOrVxWqLYSmYMRK8YG2CoD3e0jA
	 LED/v3rX/t4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620EAC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403908739.15709.8995848612134784161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815177a042f90fb1edd4968d741747120975b97aea0df18878e1c6eae53dfab6
Date: Wed, 18 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674039087
