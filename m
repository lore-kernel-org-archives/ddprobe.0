Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29158CA5F
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFOKv+5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA94C433C9
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700198296;
	bh=r2rtb252y+Le++fPJgiu77It8NvmbzhhN3051D9B5sk=;
	h=To:Subject:From:Date:From;
	b=cFOKv+5UtgRIcGHNhwtTP+n36Rw+Htfaa9oZoXaijoJZpiGBavB/Cn4fqsX/Koxvl
	 I1Ep5x2aRz0aHqRgNQkk3dlJ6SbGarQb7YN3UaYc1Q91vtwlRy2v0++lOB9LnZRhkd
	 emSKU5DXViTq7fTTJiS4GjrllKY+7MqMsyOEHiDhxSkvcpkfre/6ZplKymSc1i22dY
	 u7JPli9Pv3M52MqABUxmdpqT7R5foL3zo0KmVhThQxc6DMuzaVRMmxeH5bgoA72CJt
	 797jvuwvxVqEezR1nXDUX1MjN5EClZ0zIYBLrSCQAtZ/7q4EMDjMLHgtzz2EfG+U9Q
	 GEqYi4H/+K5ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5F0C072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170019829642.31369.2776041559001622486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa40f7edfc9d18814ec2a8ca940a5da96d0ad3482eb00cb23244c32d87b1e337
Date: Fri, 17 Nov 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700198296
