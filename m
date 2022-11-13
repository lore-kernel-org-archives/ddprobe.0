Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8281842
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6966CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668349254;
	bh=uQxpgx9bEjzdO+WuLJVIuWOZ+6HhdZKz0fVsbDqJ6mM=;
	h=To:Subject:From:Date:From;
	b=F5KcbbG8rcWZI58P0D0ui53dAtr/hAycgTiyGabEuGEDt/lViL7rtYs248gAxkSnO
	 1E9gUBOn+9o3dvxWMYkoDMGNxKjdGXwrYGGji1IGHKQgIj9jYmkGpxkMM3zsrnGwyv
	 +xLwElemFizsnOy3gFEJREKr1glTxYi1PxQB6nn+KtQ0CQ8FvosG0N8Efj2VOUjm0E
	 FGbT26kBrZQOR/skhMOiJwbgajdvN+G+bsJa+5icbTr2kYntiAsvvA4EqUVCoJVPml
	 VWGCdGUiyq2VbovYOmSGuI+FJ9HeegO1UwS7x8vdvK62NTn6BpjCzDILw/z/0VIWPE
	 /j2sUe2JiVVJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D80C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166834925432.31393.6311219485665554554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45559c9d418a7ff97366f7d9db8e7c8518fcf21d39b11609b61d205fdcfb6bc6
Date: Sun, 13 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668349254
