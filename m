Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43467847A
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 17:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A43C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677692765;
	bh=7l8B9HWu4qrqvdWh7KSkYDAo6f5TDKdeqIXQQPX8IyU=;
	h=To:Subject:From:Date:From;
	b=kvDk3eaAMo4MipbGM2G/erRUyoVrvhZVC0G3eA+BYLKR065fqF0jmbOPkdFLdBc1R
	 ppWkTu91W5hxZXMM03KZOsaS6My7croUvxbwhkLyczZLQR42DExFDdHHTjAEISkX5b
	 xIHATFanzb3Frm4qXqo773vyqrKToMeyMeos9qLvlcoMH6Bu3gTkefVGligxSurBMV
	 LfTgKPZlvCseSQ9/4X0HRYByP+fU857ArOyVqtPmEjh95VH9a4r/GhvKU3rn6zHmv+
	 5OXPFhNyRUtrbCnpSMnswEfw7a6H7nLNp9Y2X+jza5QXUCzT7QAPuXvOlcA/DE6zb0
	 TIb84qeTrebjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAE9C6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 17:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167769276576.27369.2804215776877969554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0989327931dea670d91a23141a347123a92ee4851ac39a6a7b7ed5e949edef5
Date: Wed, 01 Mar 2023 17:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677692765
