Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87C928E7
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87773C433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671096687;
	bh=tdJDPNVU46afLMj7xV8Nh5dQ7XvhqTJLhT3v9uqHWkM=;
	h=To:Subject:From:Date:From;
	b=jMsP2pneMCn8ZeAx3RLo4JqqYbcrS74LTOzxNxwa2WAmWfPEGHh+OcTWEVeZv6wGb
	 b+81Qx6+xwbIvePIXa+ngkjx5ne8hyZ1j2Cv6I8dL8evvb3Y01uPnHJkM2erAvruB8
	 W7Zy+Y6AmL+wHanySW1DcW+fHARqxJ4NhnOgvtXoNRQHu3cSGMcZ+PbB3wsFX3XJ0p
	 sytnOiuIHE2eZ950ro8YbDxVHzr9AUlXowpQLNErbYsAHMFDLzzg+pHe560cj7TdTp
	 eoWiKsTX9HR/XwFQLnIQwxMltUqgp+cSW4laQ4Tfs4SiX+FznS6/Jrrw+jMjscJHnv
	 8aU9lj8CPHh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694C8C4167B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109668742.5025.395470481272996824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ca5e6282846f597a9af2ca9c0e6655a794bb39e5a4df53fdc745ee1bc8afab
Date: Thu, 15 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671096687
