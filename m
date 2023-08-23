Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF27E
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 00:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD277C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 00:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692749648;
	bh=QjYECjvqeziRu5qB7w0m4u78TQkZdI6yUee/wV+UoAk=;
	h=To:Subject:From:Date:From;
	b=kqQ6D+z7LTdZDCo9GSSN0GMZ1spNKMWmfUSnsKbnj5VyLwTHCdXxkJX4vRsC2Rwo/
	 KWEdXoZiKOsOjBrWrhZePQXbwtj6y3zI1u+LtjHwzo5RxlrisXU19LJqgQzavbXv+E
	 TXy/scQexfW/kjoFaP0yjJqracjBNtlBH8xc7xSaFJ8JmUgSLePh+5M3qDCMkruD5M
	 OfEqKN1g9Mp/ZJKhA0p+YB+LCST1lDG2lP3kFFDhfI3dhnO6s3bwgjkeud0V71hkrZ
	 2BCpyShGiQBnTSRkxrKYfSQ7Dewz+oNkyUDW3M4yW8xVRWBmuRhsHRYLUBaJSFhMrD
	 zitu9rXPOOWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A0DEE49A5
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 00:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169274964866.12561.3137645056476980499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144e0d16e32fc4e3917a13f615b1b1d590bf8d2e5d26bb37498b718cf8614732
Date: Wed, 23 Aug 2023 00:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692749648
