Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408243C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1825C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682082546;
	bh=K0Qm2jtdBxUFJ9AQg3i6LRL/cN0OEQ0eRPU6O2qbA0c=;
	h=To:Subject:From:Date:From;
	b=ET/nRF3MdSO+yapAT8hFsNR1y2gMeL+8mes77n7+OC7e7oU1E+9zW7j4TaTn9nWkC
	 Bqv3+r0cmDL+nZB+UzuQjPkqgqCk6uep+iw0nS/aC+kaQAdaVQQapyREsIqtvh7oXz
	 fOFZ6TJ6CG+CjQdq7gMnbkHxfRq09dv0tV2xh7wKF0PsUz6IYIXvBc+5frRHrXdJJ0
	 Y6Any/2Gj1Qe1pXhCel3UtGIi3VWXodJ9u4sL7O1f29q8Gw8ro28I/lc+iFZHny4cO
	 AlYRRol80PB06aiUZJbq+Xe7ZqRr/G56fjdRFvPX5HsxJsty1AVNInh7gcY44N0WGr
	 PYUqLL5YDgdfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB9DC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 13:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168208254579.23532.8492905646493669776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084745c8a1c0b07bdce778bdbbe84d28e8437f376c0baa6055f273c1938ec808
Date: Fri, 21 Apr 2023 13:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682082545
