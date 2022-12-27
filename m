Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F55EC0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B20FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672138287;
	bh=YzLOZLB3w7rZYHeAOFt53uFkr3AnqYYbyeklyD5gmTg=;
	h=To:Subject:From:Date:From;
	b=P9ShEn90JECDEnYmLgfHKm00XypWBx20/t12uvIcr2fAbfIfN5R/ByJiuZUeET9fD
	 Rna4NWwJx6kLT9MJHsDed/4HPzJDmnMyiuAlOHH4nIQLFksykzt1Ptbd0sQt+65WBD
	 qU2YG1HEKkh/RxclMn+xyGw3UpuoO/iwxyevC1w9Z/0V/j51Ypss5wPl3G1gulBZIh
	 oQuocejTkPrrLxWdJLQbMDaqDUaWeSmlerQK0MyyziObwl1CtPNA9seIH3hoNlD3wN
	 ACsicMM9q/ThKn9JG7v76ax5Qt/xH4PJkemSYZmNFdD52nBejrwsvvxWueYHPTUVyJ
	 dIe1FZZNGqiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE81C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213828738.23545.684761826908489679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010dda653de513b61831177edb80cdd4b1d6105a77c8bc5fecf2f4315094ff80
Date: Tue, 27 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672138287
