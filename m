Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAD28BE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 09:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED716C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 09:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679392686;
	bh=XhGX5wVe8nSsWkRxzFyankifOVISLUA/EWJ+co7eNz4=;
	h=To:Subject:From:Date:From;
	b=ZMwXHHeHl0aNKjKy3KbkOPfoN5XXj4ZPQcy9k1hM52hcmbBmn2KJK+iwO3bhLsBl9
	 +8JuMXdeT7Vhs8wiSqjOf51jqTXABS4Y0gUNHbSXdknxD1eKcVPlSx4VLkyG1VrsE9
	 TfjZ8GMcMJIQSmSTRxN5J/BsLUEitYfZMtqL3lbt+NQpDSN/OzqQ0ap7ehqLd6s/sX
	 WIhuuP8qOe45wsKh8yW2BSnSxM9JQIYFWF+rIDYEJgQIBZv07yO0YSj4tIauCl6AuO
	 r9Ztwv44Kg8STIEtpW+4jLxEYy6u81UzatHf3ZdVf45VDeYZrbCPl/X6fjJBZaVVZa
	 JSikjCtQK6ALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D460CC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 09:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167939268585.19036.18174538309118004041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61825b1810bfa7bfc75503f751d66ba773be59918476f8805a6b71c8a6422871
Date: Tue, 21 Mar 2023 09:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679392685
