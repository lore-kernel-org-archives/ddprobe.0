Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4001A37E
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 01:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2275C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691458988;
	bh=rtfPCxYliRB/AuJUW4nPCDAvzDyQo0MW5UTiQLYW7RQ=;
	h=To:Subject:From:Date:From;
	b=BumTXDHKV38SM99Z+OPrdv5OzE+X89UovwQNAG0wupKrIUw9DHvjIFHoafDMgpy2J
	 S/uhUngpKhEZgYLe+cL0m/AdhH6jk2mQ2GrMOtz0i89LFabB3wK8I3IQXM2uyG5ooi
	 zSyHNc9dcEFarwBtYrXHEGgP0ShvsCke2cwTV8WnBYu/SMymQ/Ru/k7QApK7bWEWJx
	 /BnnomBZx7naZ9EXiN5AhULB3cbjevxhA5LrKnDz/mTxIYZztUl9l5yaSfbip5keSL
	 INdykdgCyO72GL7ZEQ5CryKxQdUC0aMGszcN0hbDkjjgVAV89Y0blCn/4Vhw9CpRlE
	 FdI/CXfkOqdUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41C5EB64DD
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169145898866.31891.6562637325607991185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97099453a0d179b32cbc5b5411007442da84787797a5f7d412729415ac4081a
Date: Tue, 08 Aug 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691458988
