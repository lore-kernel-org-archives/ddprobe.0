Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CCA6FA2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04970C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 19:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680118026;
	bh=nj280ZUxC4fqr4r3U9K65TBEtm/oShzIxd/kvC10yEk=;
	h=To:Subject:From:Date:From;
	b=kOTRe2BSQSSC1V34ZW6LajbXKjFDg+hlBhUjzv4u9L6f5VqNL7T5vmRxr7NbwZouN
	 UyWPyiwJOLTGQfK5gU5byfrz0+A5vln3Vn8rIQk4/UiCo00Gw3Ou5HUya3XtReqIut
	 tebUIKgeVmUEBLoYvHho1XONAAqdrNcCSrkUWq1uf5YA2IDPXDRW9ncAQ9G46NJY2Q
	 aaj43WmcMYd2uHfOXmtvzFcKNkZKvsoT3+Y5n/Ep3hJfQ7DNuXu8bi88cE0+vVdo4d
	 A0o+Ic2goiwi+YGi3Ji5ShHzeLpflvNWjRagPWLKX7Vt0cNJWELsKpCjKEBjfKLuvE
	 dJlfdMSoABV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEA36C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 19:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011802589.11731.16205862852684795635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb81566dd838e903374e21ad13237515db2336dd1b647b150b23198478b1b359
Date: Wed, 29 Mar 2023 19:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680118025
