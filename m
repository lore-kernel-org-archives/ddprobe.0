Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AE24C64
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767E9C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669992654;
	bh=VOBZOr8Bo61IZRJQL542Co40H13O/J+sJxwdeobjg/0=;
	h=To:Subject:From:Date:From;
	b=QAcawPQfPQgXjJ2Jv5X7cVHffenOFwEN8f0Grd5sZqz+lXV7Sc2gZH7n0RqFxlyOh
	 6bU6+OwkgUiy9yI2rzvEzRCW6Ebmz2V4pBorZzFQ7W2lLd0MERRws1BDuwqlBT1c9V
	 GSZWXOqMjkORTwNUKhHS4f6x+O8a0avtfV5OHvUuLNBQdgkEjY51x8RZXty0E3jqy9
	 Ira3ADbXiT8HVcX3WTIrgShioy/Y7/CqcTGw4QnRprWP35+7wVBeffmVT9L8DZn6ex
	 wgGAhtkHjtwSDd9e21zHs8oPhnsuvznvZDzsF7b4zeEEtrwaKyjhmqel1YuZgRbqi2
	 1qfwQ27R2Gd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C108C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999265436.30041.11572197962553962189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863ef3a4998a70a9bbdc487496e5cb238b7106fa6c1591ebcc384a30ad3aa966
Date: Fri, 02 Dec 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669992654
