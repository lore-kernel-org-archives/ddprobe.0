Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB1A1C37
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD39C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666944654;
	bh=OzpsoOMGSrZWz+wYkssxpWafSPtwabTRKCle7Uh7Atw=;
	h=To:Subject:From:Date:From;
	b=EyLh9RSs+8CFjHSITljuY5XvZxy4GnZg/cl0gw46pwlA0MK5Q0qgCL4jn2TYYzCxl
	 ZqiMpBHnIX+D26/1rakgh6ANProKcE2S5/0GSUvIvgxakfB7yINj7Q0VTDtGuuL+E/
	 xuOExn/bn7D9Q243jA11RJUWhvRFNayn6uyZ4O3TmUcG/UjREmdzd2NVt2xIII5dtt
	 40hcDEMn0QNn1kWzDcdaqXwAebg8aS17Dwc67WkgFW4SzwsfmXUPu+aTA7GzY/zeaK
	 o7ARu0dzpjVBb5hDnQYwyR8+iQGARmVnQUERDOJOeB0/Z+dwscUTSIg562Ie8+smp1
	 UDTPXwCHRVHwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567CBECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694465434.19356.353259509723389349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0a6acf8c99e776dfac7c8b8fda10d51d3e8b73310d84b44f8bad6e0bcd0573
Date: Fri, 28 Oct 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666944654
