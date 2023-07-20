Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D053D6A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CECC433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689885128;
	bh=qCN3OEectKnnE6IFYwEQRJRrOufHMCPu6ZwUQVpe5fE=;
	h=To:Subject:From:Date:From;
	b=uzeRL4nJLkQdd91A7vIcsCWXJslo75yoPpqqZh5JiCzdJY38R7ZJitV0FyIsHJY5e
	 M0mMnxmObEBnk3Or/iNoWwjuU0yI1l0FYuD6qt/OUPqQiH+fh2c7MQ9yV/7zRjxTAL
	 8wpqTqWbz/lZ05YAIrmAT9/kU8/IHr6cXk3cq4IhADdp2lzSTqZg6r3+We+zeVIKxv
	 CXdcO5/KV7x0ETJhSYKstDzKLVQ3A9/MBSOLD6oIOWeehvzVfYX2iRwWlZxhW8e+A/
	 wHCKOxZ+wW+f7o2FnK4nlRrZo603qgjZNwljuNGYW4MnsIUlyKhHUpciJ8CDzFrgb0
	 IKFQ/Mwh6YnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B098DEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988512871.17347.14422689950048636606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb70bb970e312cebe8b409d464e15fa71c8045862d4005077556bfbf0de53a4
Date: Thu, 20 Jul 2023 20:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689885128
