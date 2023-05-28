Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5932E366
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 05:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBBB6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 05:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685251746;
	bh=bXCNbd/nKFwKwPt2qP55JImCV7XB3it5QPYZjzg3e40=;
	h=To:Subject:From:Date:From;
	b=N4Bd/smDMzTUEr35MJ3xl1HZOj7QEevCdxnEXhJCao6CfI9htkVPMaSBQlki3PA4F
	 exojrZUwn+SbgsgnYYHc0OnBzFxXpomdRdGdtTD/KXRImg2NZTNtDQJHKy6W7BhRNQ
	 PsWKwd2+s/nFkAtT8xYRqISXs2Szkda0YeHADiCvc3x188KXQRDjX1aNEEAsx26vi4
	 tV8Aluh87+Glzu4IoT0xlvfieEEa4ci2O18Un7UMU95+v3j5q+2AwElfMhkvMTuBco
	 eNBRoKiiRu2/v7rsU2OpFe06D3QpwuU48kPXHHmanvk79VZ/pqhsEc8eaDq+OX+4wX
	 4UuGCz2rBTzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8EAC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 05:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168525174578.23882.5345656642123258854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d06e409aaa5d8802a3f5862f0971bafe0bb9dad0b6f57e91b6fd72512b796c
Date: Sun, 28 May 2023 05:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685251745
