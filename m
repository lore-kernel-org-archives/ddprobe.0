Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A51D184F
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 04:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 04:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677128105;
	bh=6ubVM+immHWXZZl51Fo0kAKssRFQbUrYWWo5lfpohb0=;
	h=To:Subject:From:Date:From;
	b=rrHVsmThFHPhMh8TqwRZOVKl2tAC0GryJqX1TT4lhYj0ZtXEbVfOunuqfAornhjmS
	 3imHHT6kkC5yGyjmj9DfJF8UwcK8fa2OhbEJBeXWdUTGElHKdS3qaioVP/QWRJM7AF
	 bblXImpLiEQbReZ2Ara4V8TrtJlI7vMrKNIozOQHat6vva88HdfoTuKC0bHsXYRW9J
	 c6q6L+8UpHWTtrJGejU4q/hhgKVpJoxNO2ZP9gXCL5eCyZ7IFzb0kqecVXsfnM2M5F
	 mR5uCGAPBYXpy/8RAP9GFklIAHdh92SAsx+LxOMrbhDa4ccj4IHxQT68ivnZ9XtUej
	 OwthvDM60fdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC40BC636D7
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 04:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167712810576.3773.2371140125760693383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56827daee8e9f5fe43e99b8f798387ead8d5c49dc033f28989b79247af00eef1
Date: Thu, 23 Feb 2023 04:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677128105
