Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B3036A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26AAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686798428;
	bh=y7ZmXu3pMR9N1qVHjQQBYuUHYtEWL/o6iVSKXQWDQVE=;
	h=To:Subject:From:Date:From;
	b=YqUvaqa5J07uFDBjZYYlsamU/OHx/Q9Tb8cdoJ3mhzuWuSwsIgoWktQ7WlpzOEj4w
	 7puZcMNLw6nwNPErdRDXvTXZkBVtlOaTJAnUuoyH5On3Qt25eLaBSL1F2qfetlD3Vs
	 MAs5lCngNLses5ZpKFKDSkzKnDLWMD5NtCuBnKSCJEq/8Gsz21aacTNNfalopUZOnx
	 7DaWDrpeSuSMXzVYIpaiZ5s2kbxfp0VEWQZdUrDJu4mSwplhLayDe2AosGUS9sZZdk
	 EdTfZwkD5ZNdl3rJyTobpFubk9c515F1BJuWwBrZ+Jq4aI/+MCUmjbvA/0Jrimye1/
	 gFrzyPmv0wf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1034EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 03:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679842871.4729.14434418209237053117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a7cb54418a776468ac203fd2e91fd0f419b23a1c92f860874f7e128adb6b0c
Date: Thu, 15 Jun 2023 03:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686798428
