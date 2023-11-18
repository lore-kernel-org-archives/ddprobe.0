Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3128CF4EC
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUJbpz3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9594AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700303296;
	bh=u6lpTD+u3GSDR8Y2CzBHSk0KK5wWTCrcq8fK6MEZO+0=;
	h=To:Subject:From:Date:From;
	b=tUJbpz3+Hx1XQPdTCfnBKpDMTT1hcjNOMo689wrQ8AYjEokOKwiTOMq1B8F3Ywu8E
	 zsTJcWvRwaO4DKyY5G9FwgI+RgeESJa+TaojcSmHIBYXC7x35lP4CDyfz6fVB06tae
	 W0lks6DgzDiI/LPxjC2zZFCOeuQZ55GN+2NRuhjhInoVuXbA2/EF9xsHgpyOwclB9g
	 8FNzkHMzVP8HKi65UR5YPUHUODXs8uPKNwWRcrO4+wTjvzJp9WxhMKaBHgHHqj6xHZ
	 jDBGpUBZq1ODMsFCUDoA5+JPTOoUxcA47DqZpUoWXoKS7GLGnaJOhSQ8rD/2KLc9gK
	 mnDjZsg9dsyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70961C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170030329642.24559.11803465642315588588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17cb02d7514f7ee8569e2e9ecaadb886a0839e62234b0b616c1492225598c08
Date: Sat, 18 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700303296
