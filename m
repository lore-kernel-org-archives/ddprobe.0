Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EA97B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 00:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C00C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 00:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681604105;
	bh=CAtiHl/Kcvw4BAgWOCRhWeN2cm6pqVcpgT26Db5F8eo=;
	h=To:Subject:From:Date:From;
	b=TJAqi/MhQ33qaPAGhNsMwKRYdJvLvf3YnKEnjW9IreD0N+vWUw54NcbFdasFti//1
	 6GG91E30mww/XjHrSoVWEIv6rHImDmk9nXx5aXm30YzWeBOiJgrzAxon+rGtp2hw3Z
	 1Yuj6Xxf/69iDB0CnRsUWbehavMITsmqbuw0/6QdFSDLCX1tHgxReDrkP9AyIzXC9e
	 UuzOXUjuTZBkvCT7RLwHkfeo3RJV8dcd+xng1u8xYzAyUVwC82vq5OvrJ1ci7fKeby
	 tmejxTfNY0qjI4te/Dc9p9QPRHE4F8PzXIyDUSaEvlMc46++20NAI15JQftZZ8IFTg
	 CGR2BBB9AxhOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57B5C77B71
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 00:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168160410578.13573.15001703742447912416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2993db9c3c1fb084aa2ffc9f9ab2e03e3749185c0b801289dc37723b27f1fd2
Date: Sun, 16 Apr 2023 00:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681604105
