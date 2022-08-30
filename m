Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE18836A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74279C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661833252;
	bh=rKCgHWHPlLq1/MSlo2oV4yTCXYnke6ha8M12ZWtgNd0=;
	h=To:Subject:From:Date:From;
	b=oz28j2duXfck21IsP/iwoT63VQl18DdiuieiT6IL6det+AAX6V4XGVbmgtkfZdStE
	 /HjFHxaUbmVC9DjmXuoxyYjY6iITpH7E433twZbTAEdX7eBuQmKZVuvD2ZuV3Yx5QV
	 UnhsHhiiyDphy3hJRithl0389uPOAauE9VyHxsdw4XtJDBsg1Qe7TXxAvu7Ro1GV5p
	 nHkoifwcS6zs4/WugaurpVg20o3+v37ISBVd+EL7kLemhSlMZv5kwNjnHBz4xwSeo8
	 pfcAyPUwxHxw1dNogiEgjZd9ud8KfD3SFhQ7KOij1PMyemamoOf8NAYokIXQF7ZFxj
	 osiHFo8oIjhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D2CECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183325234.24732.14067492138775144432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cf366266917a42439806799cd42c4bd705be65c05c10f994e963530549e597
Date: Tue, 30 Aug 2022 04:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661833252
