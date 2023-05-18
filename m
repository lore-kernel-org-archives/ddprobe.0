Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B6E19B
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 02:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07FBC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 02:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684377965;
	bh=j4LHtemmv8csgZ40qft1/ifY5e5OqOapuNjvTMMRXiE=;
	h=To:Subject:From:Date:From;
	b=RoSnu7ZFQpk3SPcHWumLAxcy0AQB5YPSELg4vTJEojInEUEm4BNA/A8mO5R0l/xOd
	 /eBz5xL/CcoeEuIARdO37V2LSUdXcPPy8Gp0FmmOr7Fam68Y2PXd5muqVE3CRGYn4G
	 LHN7p8Us37rg0PXv/kCwFaStdcGV0mavPMUwWKUeqBHsj8O8+do4cOCTNXyXHewFj0
	 EIyJNhZor84X1ZXzA0GrE7LStNcJvPk5+e/5kw8zkw0DByC+dELcgMQyfvqR0I7V/P
	 0JQ+8TiEwsRKK6AJlQgG2FWWm28/Tnryp0Q1WyCkEqesOtc7WCk5tzSQeB8W2Gj9Ad
	 62CcZ94BG7oZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62F8C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 02:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168437796573.6859.15379695705475187772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b68d840f345a192d4dbbb662c5589fafc6015e31ab9eb93882a92b17d62389
Date: Thu, 18 May 2023 02:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684377965
