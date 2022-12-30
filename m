Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D933B1FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EAEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672385487;
	bh=Booq1yy9GtHRxTiOngg/3TsfJLhtl9/LtI7+HefJIV4=;
	h=To:Subject:From:Date:From;
	b=ujeKGUWlg/sCIdLm6owcGdfOjK0VFzjpVQ8O3nLfTTcFreUtU/vZRNz2UzNNz+D3m
	 MPGFHqIXx+m4cbGDyrltuaxNqrUlSJ9S7A93BQchSzmf3syzoMznOXiVoacjliihk8
	 p0EWoBCe1AqnveGzWf3WeqiRJATay61tDKYo1jaEOH/KdsjwC2ReKntUyBN19ErfZD
	 dcUiDyqPhY5+hTlYMHk6zWooJ/bBYZ0sRcVgse0/i56UCs353jVy3bwKqL0U61LQnu
	 ly29upH8lBq4uCmufG55zoPPG0Z3R6amt1TgqDvj7cngXDzmQgJ+6/VA0Yap8lm4z+
	 aqNrjicuXvFAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE01C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238548744.31886.12030319213351211470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99be155899eb4c4f90a8d9d557075820f144c0e9d254969de80e06eb71d3e599
Date: Fri, 30 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672385487
