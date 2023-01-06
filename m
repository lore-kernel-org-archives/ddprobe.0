Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0692773B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870F7C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673032287;
	bh=Drsb7wZj0LrK7mc3jvMsTZOL3yG6u4MF6/Dreo1FCow=;
	h=To:Subject:From:Date:From;
	b=bMs1urQ00ColRMlsRFsP75ScOLO/x+0SFZSZ2/W8e/JO0JAB3Mflch90Yv4VWInse
	 ppHtrw6W3csRc0Ur3doxdNPtqRK6hHtUesTfpihAouiY1ygYLbcSSrXv86UbigDnNV
	 eL4MUZCtj0mezT00gpRFc70uuNrd+ZvXPZQRafPaP9yFcooL9yt9xHDyT6macA8DqD
	 4zdZpo+2VIXwFVMKWyZpBynE04IBG/bZru0S7KsxDZvlFxdFGpbKwbHkFcwAoE7QJU
	 prfdURg/XBoydMZMiJxz+vohT/5hTE/c3NuQ8/5gLIoEQ91u+ZEC8GmIfpuXKSXt8P
	 Ldffw+5zEVIKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E3AC54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303228742.11685.14505736407297253861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63aaf38d5b273f7b08939e9b266f128229eb5885df81dd54f7260cf3b6e16ec0
Date: Fri, 06 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673032287
