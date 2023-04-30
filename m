Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51156291F
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 15:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F08C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 15:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682867765;
	bh=NmzXS2zFz0qE8pq6sr1dzbBWVkGT68CK4JYX2hSHZ9Y=;
	h=To:Subject:From:Date:From;
	b=Pwti5PlxgzwrkWpU51gt8EHIfWook/uT0W2dsD3tRMVfk4rQWEoq4X4WHonfvGwXY
	 tRkUKIeBHlJdueMvm988MA89Qwz55FUA9Mx+fiui2Q0FsMbus5LhNXifpP06bWHCTo
	 W1OQhnehDZG5VISbJf96yIE1xDW1zI3I80VtCDwKOQtEl8h2K5YoHnDwBqy99Gy1Zm
	 f+3IL8kHibakoAMRvSL5sehZk7s/BTEz+8CAJDHeQQzVbfH3LmeXN3Mk0IclMiK2mw
	 GB//qbWiBuY3ZAN5JFg20NAIQvF18/lpl7O9UYaNfkuzFeAGJND7lLMD4VnChdgUpd
	 EAYnx9Wcf9yRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C936FC77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 15:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168286776578.32384.5580170813272231654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef297ade74ed074a66512e5ad433cf1992f3891e5a4b056d09dd288b45d8f78
Date: Sun, 30 Apr 2023 15:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682867765
