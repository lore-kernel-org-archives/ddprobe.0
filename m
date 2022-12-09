Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D527463D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7989CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670610087;
	bh=+bqZgRfPWu77yGE0GOf4phV8PFC1Ik+NxJRGj+pQvb0=;
	h=To:Subject:From:Date:From;
	b=lAnEwk0++l7Nqt/8O9ot7uJO/GRaGGx2qZ3Wl/iOCSJKcJHa61RRJ6ZhLH4jkHV1p
	 9/Va+rrj6UYtgGYoXafSpYxAoytz2zcWx+BjbKb4+GpUvBc52ryZ0YDUe3NiSwBA6b
	 TnXDt3O4WgKjJUoEN6swe/fkhycMxLORDYvIDLEBbS+1L9/+eu3yBz7tV/VHIUy/tl
	 oIUbWLVfidygvt88jNdaeBJOSk/FPTJasYUi3HnKlrVWK4lvaWwHFaiOg9k5Byk+WA
	 5n34KLdfyocnBfIvg7qXLytcxMIV+tMvdgoeO+Sips7nK0hL5q0vNUP4AMxlOKcoal
	 rLK37XgFmCDFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6393EC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061008740.11148.7472434377221409957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39fdcb19a791994e481f4d4d95bcc031a02ac6e2b1c07f9467d889f9eedc772
Date: Fri, 09 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670610087
