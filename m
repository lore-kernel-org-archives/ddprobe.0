Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C4B568B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlhEAZkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7848CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700903296;
	bh=DHvc9lY2xApe5YRMRJ628LJwtqif/QNa9qgu/uVN7C0=;
	h=To:Subject:From:Date:From;
	b=PlhEAZkpeuKTqU3rNN3lRiLjRJOQh9UqWgWeJEezeVNf+4RrztUGkaEv/ZPKeWcv9
	 FnLV4HmrU/O4xPHpmtN71VAwfujBJ8zueatIUk75D8uBC5S8UxdOtosS+dpK6ERrUO
	 gnQfnUGwM0+4+UzrtkItpLN7YRtNAm9LeP+LOhGiwXR7OblSV3LreOI1Mlo94zYvKV
	 JDQVN3ZKX0EKKFS/dY6k8bIKlmR3ZvPGaRGYCmMaJNC5IpoepDUTTC7uJ/rmNpvm4l
	 8//q/n0JUohWIjM9wj74zTa1zJPVrsMOuFx20kTjtAZuK7zUTZNTvFH0VHBQqjVYjv
	 NIxJtwS0WLn+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C794C624B4
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090329637.3281.8720556347421412994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5995f5a531f14b3705d54a677f925b51d600eca7514a5b308891786eb693cbc3
Date: Sat, 25 Nov 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700903296
