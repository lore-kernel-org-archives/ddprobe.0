Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530EF3AA8C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 11:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2AEC433CA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687433588;
	bh=oNAPZi+V7jWMIeag+4Whjf2eCgliYTDMrieSx0OPwIg=;
	h=To:Subject:From:Date:From;
	b=RXlfknDxm/jLhb3Q+i9gx4XiojsTiVYAgVQD0wDw0EVgV5+mmyrYAVYQT2deprREh
	 JeVQHomqfpAptDDGP/Gf1o0M3HLzpK7XUel/z0Nuwy7sacczW6bcWW+9Olj9QyP4Mp
	 INr0AwkZzl4U/XQ8DpLCDB8xSpm1i/UKTrGKV2UN2y/mhg/x1JDVlDIh66vdHFWf6b
	 vbwoqeXHQ4uAANXHsnHlgRDHJmE4JB+98ipqPXow3Z4AD+OUCEcRc5lP49cFuZ16wO
	 MXrbtn2CGAlbc/wPKv6xFi9j8SjwjfaQ+x/osqShDPXRIKjdv0iMEqz1G7wD9XF7zy
	 0wzS5liADzWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB919EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168743358869.5995.13473354290256614484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d494c9d79d394e17bd4e946da71062198e735a7c1032b1ab05803a3ff477e642
Date: Thu, 22 Jun 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687433588
