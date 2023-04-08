Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0EE2F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 19:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50B5C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 19:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680981065;
	bh=HgM2lCFmzvXysO2Q82tKbTmVlJTJ2lSJSbKfgnpujcY=;
	h=To:Subject:From:Date:From;
	b=FqhFf/6Danr6DUsbnjh2K+BpGpvQTOTFsBdYXx5P3vkQBeQU1fUvnw7ZTUJRx9AuY
	 uBkd/BAYktBfaF9CH9RCzbW3PK3+iFVtGg6wwL0PUIVziMJUE3C7JtaJ7lPEZsqaL9
	 Fm9mYSLlYbxQ+Z1wRvzObYESH+LmaX5OwOdGH0Q98XZdT63rreGyx5eJaLLZ6TWcv7
	 fDM7rvFgmhHkllDffYYhBNgs/oOe54/bABteeHO1f/880GvgvOTjdvfLE1bpvl5Szv
	 biYSeyABDP8RpwukaAyPyh/Njjto1+vYvog/dAPbQ7pbKBwmCaM88J+y2k6IqyJH2h
	 JE18fjI1gP6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC27C77B6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 19:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168098106576.21225.51979489544857979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f671eec1cd98da0e7bbfc52cbc14b62d0027b73722625eee8ffef7fd7fd8362a
Date: Sat, 08 Apr 2023 19:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680981065
