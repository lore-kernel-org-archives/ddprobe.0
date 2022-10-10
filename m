Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6365CB0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65807C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665435653;
	bh=4aUmdUAMk/oHDqd1UMzc8IeM4wd20blJEVsddUu4TG0=;
	h=To:Subject:From:Date:From;
	b=d6hYRhPSryVjmfhBjsKiHrJNBdtRU2LnF6htZsqUaA3zX6n53+lUZYVxklOTSnOvg
	 ZRFixAl8nte6wxAj3UcBn5zOeSBuTYxSY2EOefio01Pe6VPIf7+q4JREjQp1AJj21B
	 T8F3Db5rA2cyecnagdgRbuJCsUz2CNm1XpqI8dy/pkW9NPDtrixPlhljacMwzI+i6o
	 7KW4XVVxpyWKQs2YZah5JVHiqF74IQGWRggl1QDDK8p3mVFGxSN/DneqziJItyCEfr
	 vXgUlkWuLX6CJHvfGHBIk7GkYY32UtELbJuiEdF4oKN2nvn9eSRcmYsIuJnD6HmOmu
	 OsSO3OHX0tEMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F662C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543565331.26304.6723552493138103617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b410fc1ea6a8381fd3f3bb6aa8f1ed9d2adc7f53acfb1f0765ce3afb5c4196ae
Date: Mon, 10 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665435653
