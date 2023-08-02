Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E8B5698
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AC9C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690968728;
	bh=VYlW3VelgCzYOuI+1JhycUfuJPpJFpifAilZuqxBL50=;
	h=To:Subject:From:Date:From;
	b=E02m9epTRO0Og+pwgWjpSV2XlNhlRVZlXX/kLI0MEkZjchwvUQQ0IG4qKIQxiq3Kt
	 8KfPt/CCRD9GKsr2Ymxx9eb6WeG4/Rc0Cdw3Jwa0AMMRW9S8fiHT2CqfXFDH14LF5s
	 dlUJrV3a+e/qP2rLChMUGY355m+NM++YbiRzX7/kvJM6LojafI72OORESXL0Rjs9gP
	 naT5hT7WjN6/uPBDAsscuN9/S5MRe76QLcvzlAt3yqNV7is0mBcIUP6BkPlj6Lv1aK
	 cLMF8uKWgWNkGC7PLVmjOl/KdYmPJSJNuw4sMyDPNo4PkZFqqwSi/kwvd6hvH26YJV
	 whJ+C3X6Xs3KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB7FC001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 09:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169096872871.11463.9013601996442540518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2d80bd4f6fb62c7fce2d331483f70ac28cce8a3d695a2d2c3ce61941eb3c9c
Date: Wed, 02 Aug 2023 09:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690968728
