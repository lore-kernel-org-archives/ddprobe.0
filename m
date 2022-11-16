Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C0C3209
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732A4C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668609654;
	bh=CgHeFF1AOEJ/RQes2ycEdB+x8JhXwkyFnhdDfmuD+sw=;
	h=To:Subject:From:Date:From;
	b=RIGWjO+pjfZzeChzhKLshzus0FjMNFlkNvLfR5S9W41NYuwGSBMkAtg5w9VLXtPJF
	 pyohTdmOSr27sktPMq2SAD+SOYHiO6MLoo014c2QI4Z9tUW29cbO3oMz9hmtPF/5Qe
	 m5E4yzuY6feWI1DTZL3+OdJU5m6HbDMdyz+HIKgjJ0U1IrPOgl/blsrONONY10I7mt
	 OBNgj3gb902sHIO6xvjX8RnFYz7kauWjMoY5UAquXyZ8LzdAWOCXUC9cOw2+QXIcr1
	 dF8j1/l2b9m87ovoh9Y5aa56glcslViMq3OvDWVsBf1r7OThLC0UwmpoXvy4uzydPF
	 rSeOVAL0CMX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EE8C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860965435.24819.1822907273124541716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202a75a8179047c0f1bdbce3d35facc978fde499bb6a6fff1c664696eca08c20
Date: Wed, 16 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668609654
