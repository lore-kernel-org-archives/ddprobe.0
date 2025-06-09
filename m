Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7461F1905
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749460794; cv=none; b=WjSY77dnW0U3c8CgHH/A5nI5oGQDy7at2mr+ACEMQObFsTDJJ3KM9z5FNi51FP7ofUvtftolvjBHLkq+yKMCTs+POo57QQhrqkxvKmDQwjzrVRqKrZ3wbAhjCSuqWSwfv8eMICsrtDv3WlCe6S9lbQkzaqlgXfJfMM8oQ7pxeOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749460794; c=relaxed/simple;
	bh=BAwysWw0L9p0YoaMhY9jk6dFDaXMtJOF38sxHxqLeGc=;
	h=To:Subject:From:Message-Id:Date; b=dSLkxI/Wctzd/rrJ8RWBpmPJbz8DOgF4627lpylB4WVLhy0Salk8dTQULr/d4pvynN6NkoM7uYDjvxhUh/s3BbW1qUEUCh6RnGvF3LCQcOtHex7Ke50df2RMT1di+vAOKsXkL5XOopmdExnBxroyEZ0qRWKQ8sWLqXqFnPGn9Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1huxgFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1huxgFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3189C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749460793;
	bh=BAwysWw0L9p0YoaMhY9jk6dFDaXMtJOF38sxHxqLeGc=;
	h=To:Subject:From:Date:From;
	b=S1huxgFGSgqp+4TtKl0NkSkfip1srjf0O7qTlbJ03wj/CTW7SXa2aaXbWW2zHv6d+
	 eFxmO5AAGV7eIbqVBkEjaK73QK4JXsCGvi76yiBdzzFxyvkJqWmWwl9gOc8JMz4BZp
	 i77WctGf4wI8FCIgNF7YZlpH0BOunQ5P7E46ggW6mbix1DrFU490HOmgI7N6iME9Eb
	 QL/FpvKx7w/oOflA23iYawJ0wz8b3sBj/qVZGNQHmx/D4TvBTVW2NRlPxYzYWurwH9
	 DgqG5zQ4oG9GFkXomcu4H8wQoyfOtkfSKptvBxlrchbJFE+Tk/EVpHqvWrpv7C+yZD
	 dtprbuLhcOkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7BC61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946079357.8661.18376988223273871261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc245af76dd6e9c5b855c22fb53cc6ce1688009c83ac79c0f4c4a167ed49375
Date: Mon, 09 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749460793
