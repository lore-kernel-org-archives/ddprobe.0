Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FA52F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E187C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665946853;
	bh=18SFwkICchotp9dSZsD6X2FtfEMnOBo+WA9LBeR3C5g=;
	h=To:Subject:From:Date:From;
	b=PglIrjwKsJIzxm6RpSCzS6+9dhYiwOZSR16MW5oDNBBA8z36riSTvjNqnFprbbtHU
	 LLIT7OQWWjOmj9F6NsyjjEe36VU+KNZRfooNzX6FIkrq5U+PzyRDobA/jxuQpN1tSF
	 g9Of6nylmjHavviu92GYd0w2shrkQ4eS4p29PzMbQLfmMXICd3+hXLDeLEs98bNJLD
	 WDwmRFhnz++0sTJGqKLjASlETOVjPboHX4jwJ2O/+kUzu/RXU6CbxunXheE9TZPFMx
	 e7DLILmHgJO9Y9XHXFGj7VEBUxsqMQymp1TYNpN65X1lqWdJgexcoW0R54LkVfhUv8
	 pMIJSVQLFEqhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607DDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594685336.19094.11396252743004545782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329f96316db90e72f6ee0fa4f70f7f1576bec7b143a0fe02efdbefdd761afa9a
Date: Sun, 16 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665946853
