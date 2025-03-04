Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4132A26ACD
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741095534; cv=none; b=VqM3Qs1fzdZQOA2eFhGQyBGQFvyrcix3Yn5+kj7o0Bnjkco0ZQvr/GDFTHYnwUU2DYd9/QUJMyVNnGvUHFhRfbRsUUxsmwnDrbXNbxYwgD5TBgsV1nDLXlSJE0NopLb55Lg+WWEiGCmtJb0nmWRRB6eUvoQGwcCCUUPDsV8sMzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741095534; c=relaxed/simple;
	bh=acqzuC7FiL8YnWo+LUPWS2jfX/YyXbQtvRRIJVJ5qdo=;
	h=To:Subject:From:Message-Id:Date; b=bbOBOuteyJwJaeWIm5222jU67elp0Q/DR0TN/n1/Oa4sWU0piegETQFL8FFlrwaGGSAAPVliM5WYVU/4plmUcuEk2ibZuZc9T1jHMIX6RWhzHpu8VuPvvafq7IGaoCkWdzz8I2vOld/lCazA6Uoh48YaMsx6YlXhGWrXXNUYTbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/grYsJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/grYsJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3B1C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741095533;
	bh=acqzuC7FiL8YnWo+LUPWS2jfX/YyXbQtvRRIJVJ5qdo=;
	h=To:Subject:From:Date:From;
	b=O/grYsJWBXo/GYczuLBnYPvCgpXnpJxS+qYi5tSlYISOESQcOqbY7h6XIzUskJtMq
	 E7n6hFd+0VoPW3fbny4Y5eU7fvimzhoWErGBQ+Ukq1IRdjynpQGq40wWqF3paNkXSt
	 aad1B9mIAoVXfC6jqoYIWHAiH3IO/BOtpss3i9fUssPB3iE6ED60j2yEqZPgLR2kkb
	 MhAapiV9bDI4Gt1rvObn2yrHUtEEHE4vunyZd8MY2ysyN9NBLzYp87EDqe0G2r7WH6
	 ZUKtRhXNzmFi5aYafZmdqIeJkxfrqcHAaJlANc1nmkflLEsEf8Z/40wO7QNb8h/84p
	 bfpJoI4AGp62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9865AC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109553358.1643.4469386617650337063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea6ca1363f1947b0167c4df79fc9af99856b8e3059a559a227abcfcde9ff2a9
Date: Tue, 04 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741095533
