Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34F733EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73159C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661980853;
	bh=Y0ZWAOELYOLLUpOj9HkX4r7ri1LCK0feJAb9uKY/lHM=;
	h=To:Subject:From:Date:From;
	b=qac23vb9z2iswTSytEteyKVCo85WU5JdkQb/F+FT2wj3DlfOcWOlwRcsIvzJyCZVQ
	 K9zShbdE7U+lZuxg+fnG3X1siv56+EyPZVvvarupu4ZNe20uQr2IE5tlcM9DlFkD3G
	 r32CIfKOv4SbetyYnpXL3AwpSVQS+7fkYBOQprwWbinstsQG1CCXYv1SN6na+sWrlr
	 n2QjF1fNko87duqGGpfE/oD/cx9jIApJoTnLzzRdLhXGcuSxFT3GTf8jWQXfjDPqon
	 vtAT14Upolku9ccNWzwLJt9GPOWmmzvJaV9xwKHm/GTOyxq0Ki0jG9LDtE7S6rgwBr
	 HzZj3AhkbQqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5485AECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198085332.26978.3146439909077265361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95bc96c0d1a9be1a48f26acaabe0d6bb2442eac450f8b03465fc46e308cd664
Date: Wed, 31 Aug 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661980853
