Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3FE10E8
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0FEC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669878654;
	bh=2alUpbgG3/9E/SM9dcT7/Oy+Fr+SxKi+DoCO/eNcSCE=;
	h=To:Subject:From:Date:From;
	b=lUExD3lNVQO13xgC68zAYZaYRPzIsXxxtajx7cg/boVWXHxtild1J9RvaN80D85Ik
	 pLtW08EydRst1QXX79w7ABwdLIaEnq058nVAF2HfCSGvKjUUcspO9a++7wgROzjA1R
	 29ardscF+csJR6GuWZAJ6OKL1uG9zoCOlmSLhXX5EPB/wDC2jVkVdycOWRMhNK9hN+
	 /ADE8EZxr76eIwBeJTONLToSnkmy/5IWI4T1HbANs3k88Fn/mIhGFdkWQlexD7CUmJ
	 h/mXb9QzGxQBy9jKVvcrnYUfzjjBSzLuHp7HNCESVdfLnx7iw0w4gzlbL1f+d6l4Dl
	 JT6e0CSc2OagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565BBC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166987865434.4025.1764271743106632856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a965bd8a57dc09724adbadf50f2260ad83779830edddce025e9205f2b3c5c5b
Date: Thu, 01 Dec 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669878654
