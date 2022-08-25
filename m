Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98EC1FC5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B97C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661452852;
	bh=dTkeOdF9LAVYCXVVIX9+mGRZJXBMRLyFXgPcmN8xUdk=;
	h=To:Subject:From:Date:From;
	b=YwAa+Fc0n6reh2HZxbyGRSHS/JL/1QAgXmEFE3VMM60zq+DWpXSePXP6GEdq2m7Zi
	 ICNgTaXzSO87/alXZC7CuLoGTnXQC9AtOLDEelzir+Vscnt1qqaczF6HLN59I5UxkH
	 PbbAl0kZp6MqrDOYZxLuZxyt6MHCBb+kXqMbaKw7QDaQq17fS4OJ/05z+8m6iQxCAr
	 yTV7wmMOA1eI13mPABLf8yN3+AxHdW9MtzSRWYT/3b1AqVfkk8XCXa7URWUEjR49mw
	 obtrtljPug7xYugBo3lxxPBPmT579ktlIjOGKBqGj7eU4v8SLoF/bqgcx1y2iOvAQX
	 hfSYOp3Liabxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D53ECAA24
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 18:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145285239.26775.8611649300469568016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14769701b9afe0f47d2706bbc89d7351eb654f902887274d5d3f2993c7671e7
Date: Thu, 25 Aug 2022 18:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661452852
