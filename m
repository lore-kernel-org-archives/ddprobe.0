Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FAB322A
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CD9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671376887;
	bh=BWor6hLO9j/GfFJRS3j4zWZe0eVQ4xtOQWq5YFp01Cc=;
	h=To:Subject:From:Date:From;
	b=GA+qL85ehskwruE5CIi+zGaaTx/HhOJk8SvSDdIdmS1+PT0rWSHUQkE3P52snsiyN
	 1yGokQCnzljkd0hVotGvDRxvIPA0RNtBP23iXi4tC3FkSNPAg9ogRcLervpsa+8OI/
	 1dSBEcQeBGwAfnp1s9x4/9IkXWgkronsfSk5H8sh2jsXAwgtexSQPSOGY1hmi6HbWH
	 7CrA4jtkWIu2h/em4fUPXYEy02mf9dze4CkhfleqDWBmjFrs+2fh3qxPZHk5Y85Qeu
	 WPSgKPsLx3o+33diJtNkihVGa7wYGitQPBYVpUlr7ysKgUFQe09O+GcmynNxsvruBY
	 UBIbHP4CSyeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A050C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137688740.2121.13789184562248282144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95aff0a07faa9090ab1bbe4fbd03efe710f0acd10f1e589f59c9ca2ed2292daa
Date: Sun, 18 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671376887
