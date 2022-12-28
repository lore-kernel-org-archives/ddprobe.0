Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA77510E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775CDC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672221687;
	bh=TUmtcLXTZOuYAbwZQqwKT52j4Je6SGnzkqgBcl/df6w=;
	h=To:Subject:From:Date:From;
	b=JZySyi5w05FF3h5atuJQzvN5Iy2ATnqwBSV3wRXqIB6sKqQzlwN9ITVlxWtdFhCqZ
	 sZnUeLm3zQnbMd3fDypHF7k+lgcpPhkN+o4+LZ3Ms/TtzPrEf0JOlKsgXfHxxBL88X
	 xBmC3/PXAdtayJl5p7kZaSjygtXz/iJb0C6BDtoxVe59QnvqdMQyStOMNzuYOY+kA5
	 HCgPTN9CuCShwKt+0YX7bs17lyABpAIXInQMy9nyQv/Rj8V2YB5opcxHAquD93Giba
	 U2Mi1V4UHFCiSuu5zd5sj+FFXolULZALvp3Cl/AM+cn2gzyNnf4dyeMt0mVfwYRn1M
	 PDx/3k1lRt5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6170BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222168738.15265.11045565414169956786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7980c49d8410509f35dbd15fdbf4e712949ea0056bf03d1f4bcfb0b22bdd78f3
Date: Wed, 28 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672221687
