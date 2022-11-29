Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED1036B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92427C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669719654;
	bh=M1NOOIi3+8xpMplSoX500loEIkldHmB26KfMwKRMdBg=;
	h=To:Subject:From:Date:From;
	b=VHd8/CeuMbSn6VLYM/4fanM4Z4GSmm1mpwk8tut+REBPPYU8g3MHQ9XXcsoP0jUS/
	 Gr2ckz8K9kXrcaGPpuIqDywkb0XmRkVlesLZKUd9ShlG+zsCgFkxejFZ3pKCiZukjH
	 j9kGjuW5CD20qzdqg9dvIS9BRBCKJZkuoLSpE3e3sEa1U9yg4X4xprqMp0mdostZuK
	 /WrhZv/1ud/23ZnBOZafzd4YCJK5gHKdjOtNgrDhcD+m07yHmtXAQyho6W7+pr6flY
	 PXRSnVshxLFdmBdB4wepFkp9ZuX1vKpojWI7wBW4YMNb5ByE3/CV82tLyHJEmpMlE1
	 njP/O63oreP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D97C4167B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971965438.9446.11702841680434305202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70da03535b1378fd3ca23df913fca6380298d22ee9cf37c500cf0b1ba79fc0fe
Date: Tue, 29 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669719654
