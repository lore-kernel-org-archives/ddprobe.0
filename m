Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FB67E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F941C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671423087;
	bh=3Ba3Cr+R1ALpiLKwplO/DE+mrJn0PwYgWcw1gcko5nw=;
	h=To:Subject:From:Date:From;
	b=rglcSITp+Mp08t8fhU0EQA9US9m7nC/Su/N2RvDhB8kR16RohaAX9lcEdWglvIeBo
	 Do7KAg38V/Yqwz7soffoBUiwi+XtCp6fZ7F2NQ1KQkCWOJsNgHLnW04dxtZ0k9V7dX
	 HzJzTGsNTMCRbYSkbhayOmnRDfobVtnZTUS4v8wN6olDK2uhB8Ck0IVDO+iqat1vKW
	 pYDReisOh3TYCuI7yluFE9iEaQyjyYGzGeIFsjcwnA4UnUR62HKY8+SbTjP3BKviIf
	 Q9Z2I/iqcu/sbK7j3R8XbT2ujrL8G5dOnycq3nmfV3IlWW2q3WbWHT3LaL76bxZ8NZ
	 Z1mnej+JIuDWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E311C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142308741.3259.14142029959062287541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e435a33c3f4f679939e358ad74b182033508f50b6c9503ab1c1356a7037b732
Date: Mon, 19 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671423087
