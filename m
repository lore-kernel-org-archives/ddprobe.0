Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2125620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71728C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661907653;
	bh=qo/VOrXX3JvXxJP3/qrnqB3YvMgepJBoyMmoJzhmhCE=;
	h=To:Subject:From:Date:From;
	b=aF/cXjaNow7PkmU0JxuD87oNlWsM4cRUO8Corb4iXBAxYE0GVJbA0Cuo5wCkFndKR
	 Qa7GoXePqVCfRkpgs6NnurwScui2mzj5JKZFC/czEMNz3wylDbmYJq3gwOb3MUNg3/
	 RKpRibV0K+aih6r+S+QijUU9ogcyryXViha/dftxBjyc+kumrczPUuVHhn1qqE7WcZ
	 AlFQqBa398tv9J4LfcMvNoePEId7N+6XY/s/FyW5uawL9RIK0y6m8BGkR0fR57Ifus
	 XhSi2jw5YZKqI3k2A0+XolVuDSQS7QtwPUVjHzocfWm8Uf69bnxtpLQt/YJJG5ATsd
	 J71LiXlyoARXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558F2ECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190765334.9248.626832978853849752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc0df839994d311d063d28ac04dde42e844010687f568b45ca57047434af67a
Date: Wed, 31 Aug 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661907653
