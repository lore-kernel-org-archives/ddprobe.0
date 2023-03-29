Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB3A7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 00:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B442C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 00:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680049506;
	bh=l03SuOYv0lvoXZ07LrMQjvDDD8GD+3LgrPjfgLbVze4=;
	h=To:Subject:From:Date:From;
	b=PqfZh6RMZA2WipoYIA/S1SieH7iOg2I9X0brRLMGlrsTkumf+8sy/kEXrm56NsSJ2
	 NE7mZ2nFnEP2L64+gmkcVg2yWd+PiH66pzEHFHYCfYxoHazCjxNHM24oZnt9ZgJ/Oz
	 qvuIr2Iwz2QjEe1BZiHdXyNKg5JfM29DIOfLeQwGu5eg3E8fF4SaLK5fzIrG4hjuo7
	 8Mpa2nAfdTzVc0iaKGTjwgLkq3jfpwTCFDf1l+qtbnpJRb/oZylnQSCCUDeiAIHSw7
	 jIdRCU9uMTwkY52WbZYxMNgewe7RAUgeaIt5BOgRoKMeC6RPqz8BbWeSrpZ9fA9gcP
	 oRzUmHDhiCl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8F24C76196
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 00:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168004950583.23272.17441855389113709208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f36b2d20e567964c685a391ac34755facc4b3d8fba276bea73f232f06aae9b
Date: Wed, 29 Mar 2023 00:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680049505
