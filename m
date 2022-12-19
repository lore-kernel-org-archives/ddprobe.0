Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7C8A31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEBDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671411687;
	bh=0sEfVOiUBav7xOGQVoMhTIWJTlcoM0yW615QGcGruyk=;
	h=To:Subject:From:Date:From;
	b=gcUKMWO4YPIhp1z0o8k39m6WPgNZKeHgqs+FYH9e2OyDjJtvvHh+ZHMJvX/wn92ma
	 3EGyqgrcELtLQ8ZugpLXcmrvsqdfQRmNJ0xECJqKsuvqip5z3YII8oDYEcS7NER6XP
	 ZaOQ2lELtet0b6Cv91dXaUqpxKDWJltUJjGGkFvAYiQZiBN3jgnsNnCwiQ9DGo1ZAY
	 1uuXfbXqmGiuAsI8TqQyhCc6NTCMIffEVxk5LimAKl6ezDf3VXCRZXHeJey4hbM8wZ
	 35EkpB/UjVoGETY/RKQEG/yEJgPe+yOpUv8nssP+YQsnr4wTIIS3Hr2PIWT0Qvsyy+
	 pXX71gF+EZ+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6670DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141168738.25796.8824937505693053986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1720d72d16261fe4a3eda54ca6c1c5ab6861a5f2d1d26c56014089c08310a432
Date: Mon, 19 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671411687
