Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D096107BB
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 20:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5C0C4339B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 20:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679689265;
	bh=JokFi0XpVi3sDGOCkKtwQzZyzikpDZ08Hf0iXjzU9sI=;
	h=To:Subject:From:Date:From;
	b=PuADesfNE6V8SPcyJ3oxPO/LZNuyF3oij1EzUsVwVRHzwWgpDAxVNJu2LelsLcx14
	 gfJoKeMhyhFfq0rSVj4EHzSRDPlf9IAEDxLm3L1cW+j3yR1VA+VAAl86OpYzvI6NP5
	 CWwYDgzB6RNlySaTUR+HOQIYJUcn428Bvscyjguv2Rho5fzYtTGti5fHlwNQURyoz5
	 jP/iDEEg0FPTGBO0rm1NoPXmJvd7935Si5fnkAJjDjo9L1PLJq9Q12RGMauX0FYhqd
	 4e/NlpHqTVbl9CTDcF0aCEfDkAZnJTFQIEPZiIa1j9kNuhiG646xKBJDlGG8vf+YT2
	 GlZVdPgfsFeRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8BAC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 20:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167968926577.29217.7953952811292499642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8eca6c5f9310b4d943121444e90708ddf7451820b3f61d86dbe87723fce283
Date: Fri, 24 Mar 2023 20:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679689265
