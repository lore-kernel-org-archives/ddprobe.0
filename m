Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE15634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD92C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671174087;
	bh=S4BBZfOHp0gQ4shYKCDHA3rB7q1gJ9UA+ZII4/9wlpo=;
	h=To:Subject:From:Date:From;
	b=FvFGQcv7kdPB/YI0/xJ6hfP/wA0UoN2uKOGxtgFqldLYztcNHgrvblKIYWEbyxCVa
	 yUC6RnFXF5S+qu9TPTRiCCsIYTCaWT1Am9tdeWI5GcQHurUYVSOQBxpu4Yvcv+I0fv
	 gfDV1MqJmhBI62iZKMFKhzJy/l4JYar7MAzzDUoyvJWX1Pz0kfBTmfzEO9/CdemsDM
	 djt6BRE2UMnTuyaWDeTl+VH0EVuD7tbKlwHIk5O033xspAh8hywo5H5NCLn5TkHXst
	 BJJf4enquoGUsu3i7LZ8D9ZDd+D5XmKQmyJMP1YMP7ZnR9/XzR+2pXPAy7caXw+i/K
	 74JahotRWs5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7494FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117408744.5962.5367790020092629447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bac62147547acd9835d5a72b35d5ccca8d74e2352f5c98e9ae6c97974c6ddee
Date: Fri, 16 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671174087
