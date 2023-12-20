Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0503E1F5FA
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGPMSWDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B171C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703057296;
	bh=2jXwKHkDRkAEOti6n8zLsBzOy9gjuhCN0cqkiZJLsV8=;
	h=To:Subject:From:Date:From;
	b=SGPMSWDWo3XD11y36XvLM4/z+FSbeIqZhEJdIMQS5nwoeW/FIu6yHAWubBr8ZOJrg
	 QWWiD7SG/ZgQNrKR1rqc6FEnG3CpmRN58JMl/MYk+2Vtn2c1mu8pYxyOS1NTD6EuBj
	 k/niaf/3Q1NBmYoVFW3hTXtgP3Nu6/HnNyunGCF9t9IcHjlWiXkwNU1tyWj2S3eXUh
	 Ffoe9MmGBSif3hWnWu4zmKTH7UyhfdOZsJJ51sOXYUjHAKUIQqxs1/sYOzQ5qFgXGC
	 uy9CvJaO9vxuB5Au0uZ9CepQxSVKZ7cyojYP7I+VYC9r94R9m/2BUB7VPnKMDdrcwu
	 Gmsl7LVL31+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4D8C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170305729637.18506.12247481434942442891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552e0872312a46a474298b6bc1342581532935edca8aef73c5a71bd8a09951ab
Date: Wed, 20 Dec 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703057296
