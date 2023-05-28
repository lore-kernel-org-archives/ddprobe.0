Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59274360
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 00:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00EAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 00:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685234346;
	bh=AD/TUegT6am7OO1ZN+tGODvGEDmmqrEYHmhXed636Mw=;
	h=To:Subject:From:Date:From;
	b=KAuKOgWuf352vnInz7IlXLJkJniE6NIlG2bp80pZ3sqn/SXgNZ+Rl2j71AnbFEed1
	 8vu+6w/2Kw1aiASVOBdovI95HbO8LhR8eMT3xLgAVs6Eq+o4NtPJJMcLa4DORWglvo
	 29cnfT5gCIoNaFwyISNcZzGyAlJr/IHakkwfYZ6pB8ItQHwD665cZtRVfzv9r8/a0R
	 S7eqXKE+FNPAjlcqIANlwfbLKgSIKoZSVwVilbVvUYvmi7/4YvTlIbSd4sn241I4tt
	 ocpxUTlk3oOwdUllZZ3eJRDAvE3QINBN5uFEjm/S5asWBQOeIfPg6ANPkBUOwCmdPW
	 5knWguC7BMGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38E6C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 00:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168523434582.15428.17858750485173711122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca88d18b6bdb6d659122e7a835fb1fd3ec21bb1de8f4cf5fc6b73423ddd071c4
Date: Sun, 28 May 2023 00:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685234345
