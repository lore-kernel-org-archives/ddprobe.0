Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA74A34
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4494C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688370368;
	bh=GMRlpZ48pV8gEnceKLAF+AJAhpHYgbjFYZgGPNayqQ0=;
	h=To:Subject:From:Date:From;
	b=qldp9aYTqMky1AfNrAMXURnrXuv5wF8slcipzl9rMkW5+kKamVTauKQ0gw5Fn52we
	 sgZmZ2sOlil8VEckmIz03ADYfYS0WtsgsA4mD4hf1yV9PrllqjNJ/ylK0wfRTX+wrf
	 sUibUPZKY08Wi9jB8dyYGdG6FATgdwMhrzhnEC/MMIvmNqzXS0ELdS8dP6wO5XuU3Z
	 12ZaZiMGDHbeFQekEuTpTVgWb6xo41dlmre8u7eOREUbWdyjH0tPQ0wTA4pGu/iJdj
	 Vb9GFKl9kyEtfqOjMHVK1dO5QBdp7X0yEubdMkAN58HJPqdiOmHa3I1utvIlM88vSP
	 4MVGHXRw2/NHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A02EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168837036873.23803.11291999242456282767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8857ee98906064d42fb2f079e768bc9abd1d0f6e0799b9ae8e8888c4bf96ca0e
Date: Mon, 03 Jul 2023 07:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688370368
