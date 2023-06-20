Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B817101F3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6444C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687276928;
	bh=QoWENyjSiwQlnHdGcuFOoZKdEON8V4KiMCi4KCaROj8=;
	h=To:Subject:From:Date:From;
	b=CNsUSaXC3qY+cptzs0ysFRzs8HgS64gsMMJ6GNy7r3hCiG/oTa0MTSsdodKPYSD/u
	 U59WksGg+tSWN2X2Vyv7Z67rPlcT+dsNb9NW6RUXVvIoBa2SipLQpwK0M23SQyWnRS
	 6OMzMrcW+EFrjkCdtQ8/t2zN7i4lzLCa1ElAQAAcoDV8k2Az/ai2unREzDHNIvFrbK
	 QZ23YDvL6DcH+x4wb2S9q/tUMkBEHwqi1tr/zMSb+kaxzRLmlUjOQ6sYEhkxAySp7P
	 WtXAe9kNVViozn46B/8TMACv9RJNic2NC/ZtFFglnu6l07CrwCaB6Ral9/29SgnxkC
	 5o/wzeoTAlsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0360EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727692868.26409.15924626721487004961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ca544e6f4820e07f8f81cb88ab6b4821869266483c5940437771151bdaad7c
Date: Tue, 20 Jun 2023 16:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687276928
