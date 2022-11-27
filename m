Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53517E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FC5C433D7
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669516854;
	bh=beCsGuA5JXb0EW/9byX7CVDl66EfBxneOeGg1qSPXEg=;
	h=To:Subject:From:Date:From;
	b=JE1cM2Y1/0JAMiIE4Yhwb2unBxu/10xJXizGj+ZREH45KS+2SDZXF7XzWsLmgpjcl
	 BboczWcAw7q3ghcxU1BvjWeAWAQI3YbtPhxmPCoYRpiyPtVyZZIGKGPwRMFp/Us7dP
	 QkXNjKwymgOvwIEfyFxMQHCmxPFBl5uADRoon0kM7xNWqj0vp0goP3czhwwKfO+py1
	 XnhJtNl4YmWFtQwei8x29ZntDTM5WgVfDqmbBib92uCcaNz95hFvi5mg+agqWOUSOB
	 /Ehir6NuLx8w/FBUtDwDPzWgSMcLPJ4ZUlIPQSGbkcq/sWua8VFyAs9hA8gC1el1NL
	 qYnyQbFZRVyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5957FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951685435.7394.17039658227643206926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c7f3b65d1ad13704b5bc4626ed3644b99d6534c6a13867d9e04290bbaa9c01
Date: Sun, 27 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669516854
