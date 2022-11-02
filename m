Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98D629A0
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBD9C43470
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667419254;
	bh=G6gOz0055mM6BvWjVBV09lo+L9Cl5DDHRygITLCkeEM=;
	h=To:Subject:From:Date:From;
	b=gRD4qvC+ehLpWwbmmcPkOc2VrXZlp6vBsGC6+lTJbXIAYzDYew45t+ab+8Plb2nEU
	 i1IHM7XxtwecJnen8XdMmzGaNAeTUBkM/Lt8OdGoKHGqs9rbyEPIfGcRIcvW66hURU
	 WgYhRjB7Gsfj7CfrGNE9CwT7/EeyEHhAN4zg4tv02rI1Tf5hyw1SqXLYzoV70KNmd7
	 KehED3kg7KpTDqu8xqPAYhJIokrtGlo91Cd+jQ+2nzL0Kdjaaak6JCL+LpBk7fYPsV
	 KMYR64yfUSBC2kVcf02Mc1w9kDKqD10Ra0Y0ervBH1EnbIsSzmF4Y9Mfd8YOKZ77N3
	 zkNRxsP3qOynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFDFC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741925437.14595.8121764735891920620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec272d5600ff5a1ccc86ef7b74130cba4c118d89cf95c3dad69d3958ef3e775
Date: Wed, 02 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667419254
