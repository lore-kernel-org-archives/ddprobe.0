Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E0C256A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BF8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673961087;
	bh=mBOpQnmig+njcTEeuNol2ewFxk1gzdd+il/bn2qZ0uw=;
	h=To:Subject:From:Date:From;
	b=PwXU1vKpAlK3jSa0vL4UKSKBs1VwDnZcLJV1PL56Q8K/4kyJkAS82OB6GCtMYr/yd
	 m8jRHXqYLMhcPKYDCppH3BqY6eWKgL63YAbnG25izrWarqUBPLZXJnhtA4M2YUgv0/
	 /fqowoT5JvmwayExOBUBRJxuntlTT0wDBaGuZPA0glaef43CocZKn9Tg0jqgeqfcJM
	 3of1dSPGE/t/VI+JGxaOkmbSt1DfvVo62RlxezS6zhZh5N+XVyMFyhFMeNwlyhJRBj
	 DAKIK+j5+pjvNTqDRA1NvAJzhmWb4/+hSBnV8AXdongyBhtZZuSWG+SaOYyVmYpsv/
	 cFodUqIjNq5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB54C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396108738.18892.17835522243566083956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de576755beb9a865291562eda0a66e1e7640be66a46889bbc76f458ab95fa1c0
Date: Tue, 17 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673961087
