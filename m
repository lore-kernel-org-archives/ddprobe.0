Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E7B1C37
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 09:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3936C43445
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 09:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682500625;
	bh=zm7cYOdgSznbTkW642eIDPt52GonRkY0u2GPijfuW6s=;
	h=To:Subject:From:Date:From;
	b=jNlrZ9LXC6aKgPZ1T51+w6Uedu4rhnVhFCBbvvUA3s4Oz6+4bIjFYRjPO0NuLOx4u
	 ysFxt11JfuWtevXID6APABtMG/HAqK6bownrqAr+C00TD5Nm9DZoRd8PTl81HBdwcn
	 fmRKq939V9WoHoHENEI4+SSitULgRdtC0wxbgh22Z8JilBdWo3hNRApoUxmfIL1rEC
	 mI6zq+ToACmbom7lBU/nyP/8F2mfG9TqUpXypyidEa+MEbmVDBJxY1glBpQ6Ok1WTn
	 GLlzkOrGIrGIjEUIOJPGdVsuCxYmBICHlPPrGxk0mM8VzUtoSkrUvcIAWxfMHGfq5u
	 9WDSiljMVYxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82D7C77B78
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 09:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168250062572.23106.4068419303894280821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a609d1130595dc4e9ba500d30e3e8580b73a247c0301083a137bb285326ea46f
Date: Wed, 26 Apr 2023 09:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682500625
