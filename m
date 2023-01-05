Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FF9632
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88B88C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672900287;
	bh=ZBuItDwA8lUQcp0axVrRy66b9sXd9QzcuRbz+wkELDg=;
	h=To:Subject:From:Date:From;
	b=Q+Gmtb2QbDFrml/8PORwMduxhorIWCZRPWjoUu8abAyUsmlyTi8DhmoptwrK3f33e
	 UnMNRsL2RVtVbjQXd1p4G5KdsEpZxvUAyJI+Da2EKMQDLaG6AukOz8cb5dkCFvtU1u
	 hXP/IvWtc2JbLBJHw5nt6wvYWdq2PyjrqzESNK6RWutq9nSDUHHvsTXqmy9IGGbDaN
	 C+PCaeE1pCkf5MlnMHAs2T9w+wosbY44aZoSBEt/5Yprzb5mE7q7MmPnt3WyYvIniz
	 4uP1XrFj/ZJ2YnoBQp/W6dY98pIJNYLEeNGYh1+yvQlyBdW2hvSxVvT4UkhWaVH9RN
	 uhUfppE5v3oqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A15FC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290028738.26440.9836228446348136127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebb39a3e889001a41e6f24ebc257dd8ecf01e01fa9149be8a74f7b8bc019f67
Date: Thu, 05 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672900287
