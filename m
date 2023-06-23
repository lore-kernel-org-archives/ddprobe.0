Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676977FC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AA7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687493588;
	bh=HR0YUkfVrgl14gDjI047YBCYAxsSKhAey7n9styQdP0=;
	h=To:Subject:From:Date:From;
	b=mk+u4uZ2mqkc/wkgipIEosOK5ez5aAG27EiuL2z7lF+/XrG1U6g96+kEEAulzDKq6
	 9yqAU8UZzZzcJS3keEJfXh80NhLDib8p3nj4Y9iyjTumwKro/vCEkIr/iKviLRdT3y
	 2tfsYRqiPheXv2FNen6oav+KG1APPtqKOpaPdl6gteoXfmn/hib8maR1qhNqfmmF7W
	 BVfdE/YRDXNJjMQ1LN1H60vsVQg7o55CHOIZ1fjccHZDOULMwwV8UNJJk9sl3G1F9G
	 0dgT6r5bqLnp2daVc9Yvbr834gi5uC7LC02LEkKbv1lZNi+MzkUIWloSn40fysQ7Dj
	 KUi7jX6glivkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2678C001B3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749358872.19191.11496495382900596630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae16fbc8a4254f25ffc0a4e5849ebd8710f937f390f9538adc4369428407dba
Date: Fri, 23 Jun 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687493588
