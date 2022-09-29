Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7671107
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809C4C433D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664442653;
	bh=16FCALagwjQaIRpORxi3ZG/3VYYCkd89VxN/QlU7q5A=;
	h=To:Subject:From:Date:From;
	b=Of8OEWDfYMwK+kDfTUQYqSTdgW1p0y16CvDtKYWXudfHzl+dmk/I7Cg0kf5C+3vhG
	 C8UJzz5z0bq11aCIpLrCXT68qQ+qdr5xwE/ThVW0isRUX60U7w7Q9p65uq6oI5YlLX
	 JbDJdcZfd/HYaEuvD0WA+JMMOxOi603OmnKPZAZuKHSSLDNaUlyeMMyrprR7wBN1CD
	 76SrWEm+tSDDFIV9CfByFIauxEaB+WtNqQMgAB31UmWmXe/qkknZGXYHF8c9PaNdVa
	 x5J4wLoU/zPpiNYFg5wOgFLsPEnsF86faw0SmtUanVdXAQ+AIdw78iYHZWIX3M5mnL
	 J/nodwCcAmFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68604C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166444265339.10222.3054011143342976571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f055353462ed41aaf8e765e3bf92518b599e19404abe74c37e73904665f4e2d5
Date: Thu, 29 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664442653
