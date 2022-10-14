Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDFA36D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB93C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665721853;
	bh=8wFi6KgNxFNECiZ8akPK3y2zv410dfO2obFkwOhRcIQ=;
	h=To:Subject:From:Date:From;
	b=h8T/Nc2e2/qiKxTqC96h3DZ9/ZYYOmJn0LdJYyrDVj8BDe73jmfb+io6FD/gt4ns4
	 APUUtoOesSaverI71GZl0QvuJ8PnfFFkGMz04LfnZcp7DbFmH3dNwO6b6EnUVQFUkJ
	 u5K71GFJ2PuoybHFQP52QfGKA9ddoJpqyWFhSmYUWFhMKeRkudpEyfyJhVRweRiUcJ
	 ZmW11xjx8daopCsAg6uIEFFrnF3D8tCX1L3C6PrI3mOJemu2f4ZEAkZ6XnsEfrNIUj
	 8eHuym5NT9naJTfJJVkkEuIc04t7JaE79awKhmNi5XHcV2cvAujLWfylEqs0IE51Dk
	 UjepsGbeP1pRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51767C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572185332.2592.2479471387397816599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92915b1bc85715f2421691c6a17bef3d0b4577c6d453751decf910588d0d02e
Date: Fri, 14 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665721853
