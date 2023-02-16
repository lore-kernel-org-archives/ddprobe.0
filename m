Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A0420FB
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 07:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1DE6C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 07:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676533806;
	bh=tna3KWpjzDhWd9HmmrCbgUTL+z/U3EzBmC/1JKUYMms=;
	h=To:Subject:From:Date:From;
	b=CVAYJqeo4pQ7r+0dGxgDcy2RnS+8kHLRzy9CexrBo6QiXRuSHaym+bJRpVfjVHmQ1
	 sncREAmhcw5GCWlo45pORhrfCAJD69t/ZLhH/cogOun1xEs5KFYLPKPaau5YwHkkTX
	 lfLZMOBJEGhGnT4niyH2tNdP8mElFC7Cl/jbxJH48rTnqlIHj5N4zIyvbUo498tjF7
	 JJDIajW6fP9B3pfLuurF4HTs8KerRTeJ8aFOB197ZxuDpHSu5O7YSbXopIH4+rP/6F
	 hxRO4dZW9Rk+53dw1efj1keeWdkzKnJoR0cC37XE8itYtHzV1EhCNJbCofYthRyDhK
	 w1oF/eqCIjxIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4842C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 07:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167653380586.26420.9339536933189402921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c07f2c2672a8e1223ad6bf9fd60cb57e3db8b9f27f91aeb4939b9acf93c9e7
Date: Thu, 16 Feb 2023 07:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676533805
