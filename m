Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98F15CAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7750CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665434453;
	bh=BBF280APzgP84uUrmPIl+J8Y1rEsqZZR+6knhpt+qrM=;
	h=To:Subject:From:Date:From;
	b=cXl4kk/VAyEqaoeWOp5WZ91IHKfiHgM5f8OjNYoxNTUNHZgHrPTIVBuZUtAOSzkRt
	 HMNuwl/yKcDkndZMiQ5g3RcoI6deSAH2EfS6cXa5KT0o9Fdr/QFJhU0MhFxvoeo1lh
	 45ZKZT24o1Itgx+NUHN8l1h4gMN22eV0iVRDRpJRURnzByqIBIQBQErNqlf4MUjvNH
	 t8HALUUyIr/RaAfUl6EzmJUPP9a2MklxcI4RtLPDBgnzJcsm+NidY9wCq0QDL9qN1K
	 CcEnoYpCShnPmk2WPl4ib3oKGOr2j2wXr2klPdW34C0k8NH5TMGHU+aZkXSpOli6qN
	 vVYP0T8YsqmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A067C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543445335.29663.7624642024702788134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6db85ba8ca452948bf999fcd09061dc02e83267dea3b1eaade0471d029cbfba
Date: Mon, 10 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665434453
