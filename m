Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6D86D22
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 18:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7534C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 18:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690999328;
	bh=H5cikpV2HMnxpfkdkCEdjeweE8vA8/rRlUkmDmZiUIw=;
	h=To:Subject:From:Date:From;
	b=MFoTkBcUx5KJAy/VV6Ho5TT0y7h0tB7WvlmLIO+Nal0l2zW0Ud/qOVz/T/HJJlxmn
	 9FABTPryHtkRBl0hijxNW3rpjnap8ovTUW1LxU7l7lcLV9R8SxJ8/BvymbOXoLKRXj
	 zZHKE0HS12Nzc9JdBE9CBKdC83jxy8bVQSBzRNGLbtD3W/OVi/B7ZAgfsVtraXwS2j
	 6ELUxY9Xuebp3+DaJhCPccsWD3SoeEtmyROexIWorQoOc42Nqp/GPRA+EA432DntYm
	 0gAoycRWzbMqS/NWW46ChoGS2fS9+QaThpbTJ3kas3fv0fvCZXx+BIbdB7BaHzsWj+
	 sX4F2Pk2hQcZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD86C04A94
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 18:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169099932870.12492.5010515537100704812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a15a99b3e3306395df177d2b879272e6efcb06a3679992ce59b48f131c2211
Date: Wed, 02 Aug 2023 18:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690999328
