Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1317A8F4E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2PWUwbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92253C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703320696;
	bh=0Cm/7oc2cfFb+Qe0fDB+6+ks9GoaxLeeMUc0FxrDlzY=;
	h=To:Subject:From:Date:From;
	b=q2PWUwbu9EzKGj15bES4pcCvpocu3gW4TQONAKGjgPAva61K3M2wUcYAyv7Oqb/5c
	 NUuP54oLygy0Bbhw2sfjT8PKSmq0Nq/J14GJon2+9H4Kv2OkamV2sLPE9HYmb3+Aa1
	 WNx6ucKEU3A51T9joufl4K5OYafpjxd+/kkLzIQ+YhsC5QBaQ4xsNjcG0lTNiv+iFw
	 JmmsntxF+IW5GLy0prm49GN4JsrrPTyqJpAZajA4Yi8JPgP9OanfUELLt+Yx0zwdtU
	 Bo5G0hdOzKg3eJR3ZB9yaPJMPy2+CKQ19tnVxrYT9zBeixa1pgkqa99AZHIqgnvC5b
	 X6RyK+B7blB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74AD0C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170332069644.25856.11207028287021824620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6575ce7edea93d71b5d3dba1062ea171e95486b3a11e7b7314646e5bb6902769
Date: Sat, 23 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703320696
