Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD2519E69
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE530C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686937148;
	bh=QQis3Up3NjrxzSZmfnrjXhgGojgMMAWTQUZ0mpRFMSY=;
	h=To:Subject:From:Date:From;
	b=ZZCMTkMK1MGf/mK0+Xl9yfxAaS+vCIL8OY5e22zqHfo+4Xm1GMN4CZdBWJNSTb7+E
	 u3tX8mbF/T3/6+2VZzBbR0tK0+q0AZwbvMj/QmTBFPKGyb7P4KQnkAgNeKO+h1BU0U
	 WXrclD49sYG2BHfzqmEmAGqI3V0OSsx98z7yCBwx7tIkhnn0v758lOWK0q9jIpJohf
	 6eXUg2yvUFdlTyvEtlIQZEJrmbOYk88MjT453In4SQ8bRjmMXZiC9YgxO0w5IlQSM4
	 6ftBjvQbuL7rJgi88Ajt7bpmHG8w9n0lcZ/7gWOB8hD9vpR90ONMzb7PoBNJnAyeIL
	 ax5/btP+t6q5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BA6EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693714865.28299.9587606665221567961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82bfe361753ef7c1ae43888ef57b91368af0d4297a52788c8e92c79fb6028be
Date: Fri, 16 Jun 2023 17:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686937148
