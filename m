Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35B6EA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F815C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665193253;
	bh=xIU9jfVuq9wD3lJz+EGXQQ+yzDyCiLf8ndQf7HL6rxY=;
	h=To:Subject:From:Date:From;
	b=k16eINYcEZhzLQrJkFRmkEljav30O1+whSpK5HYAxkkySL6H6JYnLDpy9U7vlqkZ+
	 657XHpU+BVpYGqQWRDnB1x9R9zM6v2PfOy1g6qfNL/n/jsxFa2SwKZubu6h0zQ3tTU
	 Ff/HJkVoQiLcNShu6BLjpV+cLOINY3E/N6/A5hChpBDdfByh3UsP9SJTXoOO1qAmXD
	 Thde+GmVYTlzn3UjSVsXb2L3nrapyWB3oC3hCte+DV3EvSrLs4YsKnuvR09N9i6H4V
	 S3RDRs6yZCUkH3XWuSJ+GcJfB61okipzwI+6pmYkRZQ+U+7+IYost08CpwncJUuDhi
	 55R+i1IuXXO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9B0C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519325331.1317.14523855828484061708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9ae1494c1647423456db16d8013ecf4e3d19d1a560cbe4a2423c76111e1a61
Date: Sat, 08 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665193253
