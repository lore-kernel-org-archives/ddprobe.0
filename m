Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C284C3D72
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688F8C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661458252;
	bh=WcxpxUBx6zP+m54KypJ1c9Cakc3c8bmQnrrud5JHPjY=;
	h=To:Subject:From:Date:From;
	b=vL9N/KcXDid4zN9ZCWeYiJuuWtiWjnp9EyY6nW52iQXAAqFkVv+9hTFukFxf3DkWZ
	 ePAL5eUOI3k5IWEmWy7aFStUMnK4DJwuVgKXFICXfPve5TG6dCExtPsgbQoOvOaSNR
	 GfaxY6KNbVB+73q6HYh5bxj4pQVxdeRIJSwDdbMfhAlZUJFAhCZdZPqKyc/l80XNPk
	 5CKwRijXMmy+eTlFNSb9XnS2MjM6A2YaeE2dFdkUXWjuBrOJNuLlxKLpF2wkPHOclz
	 OGlzT8S0RWqWIgnZ9E0pI9oYzZcPzZ9qVG0Ecdz/nLrlCoN+V5QgM8YTa4RV1f79rO
	 yO4xRhDk8QOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E95ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 20:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145825234.27998.3207742601694211177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3abf872074ca3371e23eea98d8814bcf94e134d46233db43e2de78998cd9900
Date: Thu, 25 Aug 2022 20:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661458252
