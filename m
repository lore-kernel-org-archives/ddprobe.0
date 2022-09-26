Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9297441E
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 648D4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664214653;
	bh=lp8z5LkcF5LA6ZjNY2gvDl6AFF9AP0BKns9nuOf1otE=;
	h=To:Subject:From:Date:From;
	b=oguTAJMGhmBzCRu3M0E9UbleiKor6+akjQPBbdrHqJN6Yjt7Cb0RV+kptJEcoWpoO
	 0wkaEUxbjyU62Xq6yy5FqCejNWFAfAj0e1E9i7EGtTJnQlMBwdwp+4tPJA2BwDKurG
	 4pI6aI3AP8U5q11CH+q71cD7k7oDMO0cv0UdxkI0/dJuf8OUTEyzhtNKPSZIF8c4H5
	 joEo9zoM8Tnw8wd96MPwx61qpJ+JV33aWQmaAcT0enoP+vZEByzaiGADyOGHjqogkH
	 YoZAE6HQVuTZ/evzTtP/ZShh+vvz9SCrcS+fCRXBFWjDTrO8xV6hZmDGRArOMBWqZU
	 KVercGtVBuFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F212C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166421465331.29384.7820692081062345081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0796262971e27dacd0e7b512d22de5da9af5190ab4bfc2b1b5e745d4f99547c
Date: Mon, 26 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664214653
