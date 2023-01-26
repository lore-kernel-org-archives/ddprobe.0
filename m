Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C116110F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 11:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13ACEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 11:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674732186;
	bh=QNw5C8txmHk0j9ZdlreJ1fGD3AJlFV7FGaik2ioQkXo=;
	h=To:Subject:From:Date:From;
	b=N1kHSGdM7NH5LZbyX3TUPBaRzxlty2vwMSddxSH8fzsiKwtozsNrXTgnNbaG15VaD
	 pPRc17cU4f5DoFIPcVAxIHRSDZUytCxuBi/wzB12oC+2vnqWL8QWuY9CuP5gJeH/s6
	 6Ic1Qj/xK43vuNpQ0SYxBUpFZrtJGM70XfSQCc+VYUMIXeYOKFV5w+WGnsxD4TQQzs
	 9xIww7j/C9NKJCAUkL4H9fYTHOUgXE0KYiFge8A1sfJymkRqmZ6WLusLYDH+BO8P3j
	 aH23qRbogTosM9hNzJ9C54r8eFQIvNK/4Qgf75i1r2Dd7p3zUf7XREgiITGLmP9izx
	 A4oUbwgGji48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFAECC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 11:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167473218589.6322.15512938107432006595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e69bdf19c8bbf35fad14762fd2ccb0af4a950d565d59eb516f14b98430b37e
Date: Thu, 26 Jan 2023 11:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674732185
