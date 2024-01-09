Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182F1364CF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciOWsa9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89516C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704788896;
	bh=f5z3TMEgxlCVB53PtYU1Iz3GF0t2USgevfL2N/cFH1E=;
	h=To:Subject:From:Date:From;
	b=ciOWsa9haQfLfTpz78WW0Dpabxsv9Z+xTdRNxHlXP5fI1ywU+o+gzn0ZILzgjVSMM
	 S4NGDT3kURCnyt0PNiW97QYHhT3Rcj1vLRmQ3OzCeiFv8OWyOo+3xua9IpxOAlN/oh
	 hPOf+tXEDZwPyw+PkmwO7IhSRnVyWTe6wluoUuBp2+GM2VkRDmSrs5VZDWEBKBGNxk
	 yKyW3hR3GoA9/EHL57bMZx5fFKrY7110h67ILC3dELy7/un4AIt6j5skZIJpQVB+Qn
	 ZtKcWjTtJt2cVVoKm8jfS6Q1vA1XDhtB/rziba61lfLYhedM60Mdc9RxTPEcH8ayg1
	 L/U+rLtQfJ1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A96DC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170478889642.7825.17330783934778037287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123c59f9ab810c20880eeab97ed0f6e4b8be72dc20905e91e4aec3d499c4b3ab
Date: Tue, 09 Jan 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704788896
