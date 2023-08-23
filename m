Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8FF10E9
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 01:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB90FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692753848;
	bh=njaYfJ/iEC97Vk8mKwbNQJR6oqbr6zre7+7W9y/GhQ8=;
	h=To:Subject:From:Date:From;
	b=ElIH5m6ZeJpGjAq22CaP4j2RnhuVuuShEZpswsG6jQyYifJ5LSAEOFR1Ac+y7kNLc
	 hmxP4iKIIkq/Cgwj03UfsMG45wYAmHrFkCBcaxi+Lbz7FgLyH9PtbgKckUfZtrzVbv
	 09G8oS8jrUoSAPwNWJEhzo6kzL/VJtm1eFnsmoxPBnfspBO1DIDX939zR8MmZSm7at
	 KFH3LRgWfWHxRu9E48VR+8Oy9zvG/K20ykJ+lMM1v1sadAiO0WEL9B4av23a35fqpm
	 5wCZ8LfKCn3zJ3SXXcfuiPqHagon7dAGZdj0vGS0+xuX6Z8wb0+bjtUxdrZiHQLaqH
	 QDngdqMbLRDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D7EE49A5
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169275384868.29393.9788811371124434162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa92f2d46951d8415efcacdbcfeba2da2671aae6968d13ec983f3022a1f8e5fa
Date: Wed, 23 Aug 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692753848
