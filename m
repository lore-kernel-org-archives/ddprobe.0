Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB29D20E7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D84C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664864453;
	bh=DrymhSUXCNYYz8mVj32pN43SyWkmAJ6sYdRrXQfmKLI=;
	h=To:Subject:From:Date:From;
	b=I6uRvFDturvWbUTxs+tsvo8ZAA7f0fY8srvNYH9t4LZDzildNc/3FdGW2wBGkr+M+
	 THzHXCgpH7okannpvfVT8T4iSAtJEwwVjhm6kEC7YNBB3YuIcclo2hwWAPhmQ+Eyrf
	 mlsrf8xQ2ujzfbVS6ZbaL7VV/sdjO9QgB0mTTOjT1WGcH/Ssy46eY5O4LbqepRff70
	 N4ARiG79z+BHLYHSV6gI74xciSLSy34nXz8lmcQWXPzk8ks0RV6R6TSha9Lo9SwhQT
	 N02Yk+UgWUe9Yj6qpcgbdYcnGBlQZz0g9VDybuyOz2Nv1pbEeU5D8FA8GcskPA1emM
	 1KzAeddtZ9Eyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C392C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486445336.7625.14246031535443846107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be4ab99357c7e9de062094a581a2adc8f2bf2fbdb49d2c2b760dbac9cf7719c
Date: Tue, 04 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664864453
