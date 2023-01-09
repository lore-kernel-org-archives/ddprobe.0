Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6133205
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB9BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673277087;
	bh=Y+9zMl9CAdztEV3hNz0HEozvHi7mgUX8pK7uEtTXDUU=;
	h=To:Subject:From:Date:From;
	b=ZrkY6HnOLm2GWvsjDihUI1iPDES7JbyFfluPvyWmHEfkSznLRl8WVZwg/UogCFOAO
	 vNizzUBzqUR2TUg8ibneaJZ7maZLYC8Q7CDBu1Nx6sxMuyAPR3X5tE4ZaspziFkfH7
	 nDHIBin2bGmT2OVXDH1h8k+whfl2gVrsexXjaW31dv8ojTq42AScfsbp1chdVmtHio
	 uZX+TGVVDq/tM0x+QZZP0FjGyp5r5tM26ydhOJxTWaQWltLBlXVmNEOZVqF8ZlRu9A
	 OK8EKs+wGDrChLjn6JhITIkubu9JWudvUYaT4GN4jHPuvjBZUsy76SXr9hHC05kiA5
	 PVK4x+ZELVicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630B3C677F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167327708739.5001.17349328701922972479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed95c2575ca19fd52293e51e0549917b7600d40c57e96c57af024e95c381bbd
Date: Mon, 09 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673277087
