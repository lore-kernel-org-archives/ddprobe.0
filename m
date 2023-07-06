Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB21EA4
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0A6C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688617028;
	bh=91csmK7xfcxgAADQu3STl+n6S6gZ1/3ZKCezL3rJK0U=;
	h=To:Subject:From:Date:From;
	b=Z/00fDojEYP/PxUlqkOwPJSZqhSQ1SDnn8M/2DlEkzrvzP0GeMA7EOn18PBN3+v0R
	 TdPyEttnF8C2fKOTCTAjCYThyseKzSiKPD+HTKEGDLqQqrz1wjT6gnu3ceICGGYR3d
	 68eCV552I4lJKc4hjJLeQ0lPua+jg+5SgaA4CnC+/oRvwAxQ56THiPSCS+134jqF6/
	 3dbzo+7G0UgxpWFM1P1NOcqHkoiUbeQ43Piq8aVlWt63XWYKk7Dghhwcj9j8e+uc4v
	 /5TqCKEIUckt+ZNWApr3eWSlEbZrnYqE2gfUJanHWVztkzqA7YfC9Dug3myvjYf5Pt
	 3Y04mx9Ceon0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2F6C001DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861702870.30569.8896313001003729158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91747f120f45df33b879633009463756c79d8f557ee164bf3dfe2eb3fba0add
Date: Thu, 06 Jul 2023 04:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688617028
