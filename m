Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E5E2F30
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65BDBC43470
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661863253;
	bh=wbaIbFYcdVv4vGzNWbFR8IgYzA4o0nTL325lVJkfyNo=;
	h=To:Subject:From:Date:From;
	b=n/4584d87ns/lDoFIA4YsmAU7tDgJaAH0WkTSuV9+boV1QXx6cHZE8Q/GGaiprAHx
	 v3YSGKrQvyyIFRaV47ev02IXrU6/LiCYOlTLGKFuJobO62VRY+Ixd7nIeZqS1SHh9m
	 NeZeaxQnCiloR9Tfp3zUl16H86IQoUeSk4YNjkWb9/TpTXB6kPY5DLRtgPzwgL70o8
	 9yD0e6M7W/8xBr9jQk5P6ICZrKuCKQSReTvDb1/aReMRaYaX317HxAjvZBirOl7kqH
	 0Zj0b+NXTHWx+6hci49mHR4TlpKPg82ZIaXtOi5Y/soRH6PquCh0021DKhIdquW8fX
	 MTBlcomCYNaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F824ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186325331.18718.13277696447022323470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8933b0a2ce87036499cebf43b81d0850bf95aa751a84ce95e81da98617d1aa2
Date: Tue, 30 Aug 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661863253
