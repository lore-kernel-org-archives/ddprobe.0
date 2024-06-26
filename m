Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33931191491
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719427403; cv=none; b=ORn315C6H7e/6IlGIy6zOOrf94g4Nl5VCIPTpjK/FTcWYcmcRF95+LolRbDl0MU8fF+LL7uzoLDlF+b7R/9Olhd0xtZcPRJ2AfUUy4EVzIY706o7bJZXlbvSWd/l8VA/bf9HbdppFDuvsI8OIGvj6wTqsYg8vGKjH/aQ35qLhOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719427403; c=relaxed/simple;
	bh=/EVNZY/oRVoz34fCXQXCrhJOhvGI12aeQcmRW0bLT84=;
	h=To:Subject:From:Message-Id:Date; b=SYVCTdzbMLs+aP1LPAsDITnhlbCufnWwWehp4usJZr53AEdvFvrgsBNSMZlp9IPH0NOGvH7niO+h2Z5i4b9tFYS+26wyKB89uL4ThiAK5OUGecJLuOcjAx9G5Z4cL2Z4cyB8BdgBiFeO5R8nydkzixuooVIBEMOCqZBbVD/w7nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSzEj5Qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSzEj5Qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2405C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719427402;
	bh=/EVNZY/oRVoz34fCXQXCrhJOhvGI12aeQcmRW0bLT84=;
	h=To:Subject:From:Date:From;
	b=RSzEj5Qjh60QIsAOSmaj1n34zSU6bP1x1dNVn+9cr2B4PYN9ssfj3wqC7p+hhY/L5
	 k/Z0nt9kZ3S68kJQmZrD0YQnPKmLEGMLciZNFAmUqVs7Oztx4piM2PAGh648GdoLwl
	 QSHw1A3MJxQ41MoTwcn2qAyXf76pUPRt6brPaoYH9xraGIEWpL+Lwm+hBL2O1bHkL3
	 YyM1BU4/Zw32Z0bI0Fy5W6cVZQ/u5SerDDpIJCK+LF3md5UNOkckCFHfygjvEg7jVN
	 HZPUi/lKG99NgmsZzvaL2wqBDt1PuOjmP0F4JxjGYpnEzocvyRGStqhS6nF6EpSyCp
	 Wk3OmR+QfM8Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5CCC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942740276.5997.6737021115730294851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a955f781dcc65e4f52398d89afc32b4783a8a9bef57d8dc87740a1785b679cd
Date: Wed, 26 Jun 2024 18:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719427402
