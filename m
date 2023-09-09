Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B07F17C5
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 05:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7407C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694237048;
	bh=Vqpaswkbf9s57TwBU08Knr6SaQ0M/HClUwxery82nas=;
	h=To:Subject:From:Date:From;
	b=S2NO3i9zSP18O8GYUeJcdytWqM0IL6Ne5Fa+HQtR67hASvYMUuDVthypAxbiRuYS9
	 VRJUTzC+TWsrDGKiWvPq58skhA3NfhWVl3dXSzLOAnFeZUN5ovbUDZOuQ/Y4lZMkSZ
	 HQjHIXxe1d71xUu+CVZWMYAMqG2m6CCT1pFP0uoshdzkJG9Pdb3udObCPvRfXAIKsR
	 uT8gQsZwo5XUSUbc7vKKn7kaBKKen7RaXh/mXAvQboDkN1HezLluL+pPGmwGx5Fh/l
	 stKQNw+nzEWY/78/CT9QTONMJUVg8AhM0mrCAqvhGekvtqgVgGCb8VbAo0OPWvm4ZS
	 BhNEmfMgZrJAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B17EEB57F
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169423704871.31189.8158394733414504116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12eabbe9599e6a2a00f221ebe1ce072b85bc481c2635429073b28ceda1423f5
Date: Sat, 09 Sep 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694237048
