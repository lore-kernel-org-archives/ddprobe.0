Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2027717E4
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dc1/iTeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90B83C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700981296;
	bh=ndn0c2Qm9rUX1sQRGWPCY8NBJjbIukDw4HULIySlHbQ=;
	h=To:Subject:From:Date:From;
	b=dc1/iTeX4+VusiyIt8paAkTKkbE10KABHUrjIUvr+Dfu3l/TDGqll3LaUQH/afvL6
	 3+KUF/HOS/UvJNRDx+xF0fyL3C7i/DCkCVyfmlMQyp6KvNQqVRhNbTshAq/7XrrScf
	 rUSSvHc4fNeOKvkHeFf0oK1qqjj7hQVEesz8MmetRjPFDfZ3hnwZvubtJ4AGshQbqm
	 g0CjXxvMG7zA6K4oSY3eMKYE7gavZo07mmU3AfJGzBx4hVAMuVcNmjDg9KWzCv19K/
	 JpgZG0YexQlMjApH41HKDZDkzO5cZLPyYQuxk3PO4e7YNEQHxJiq5lG4goJuodUE3B
	 l8ogxuZXSWsww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F579C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170098129641.26066.763844703214790676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad2e38fbb6e5c0cc2ccbbb435ae56c8bbaf745859b4ed20e436687a9a7862a9
Date: Sun, 26 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700981296
