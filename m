Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D395D19B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846DCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671093087;
	bh=VSa7vIeCua7w+XhYWxuumJeW1T1qveWY+vZReebjKbw=;
	h=To:Subject:From:Date:From;
	b=fLnUbCE0Cxck93TpI4rGJh0+fZdAzFaF526p4ShyDQvnAiNwV7kWlSLbtKNqL7Hyn
	 F9yYKCFNyIIxknujg852tos8OfE1SLnyQ8DZkN625cKaVRMUutx3lNEybD1T283bed
	 GVq0ZXW2xkc3bcvdps5AjZEE6q6SM/pMUa60fU5UerVv0e4vREWBvxHvNqVh6QsbOv
	 uwd3ukYGDbzkDbFhSRbXPH+/6saW3vFWVZmZwNCpeXI+wxY/q4bf8Q9unGP631XLQb
	 xOpLekHUqprNifb7Hrm8GJuYBOsJa9TMuR9WqpaVUQte3v2873VAWO5WkYlMKeNe9O
	 nyd4iMs7EwKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AE0C00145
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109308740.31938.885506898738468000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4630ca64be4e29a46dfa4eec1106fbdda2cc0510d0c02b3e8d6c0e37c7cb8297
Date: Thu, 15 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671093087
