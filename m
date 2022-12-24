Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CB717E2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97250C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671885087;
	bh=P02i5VFCqbIlfoNnYyzAjAMunWDFdy943an4wGpm62k=;
	h=To:Subject:From:Date:From;
	b=L8VJnM7r2m3T4GtO9stez7iOCTNrNdFTV3Xxu7oJBhU/PTdCY9OajeMO6hWjRWi+3
	 hapnFtQQOg5hcC8mxu/iLzZHCr4WBY202TgIlCi5h9opAPPedt88+ifobtuGqrNiRP
	 T4v3sduHvjRGvWj8KCokoeY+ovwLEDJEXAan7tMT+09p0YIWGenMMnNeJP+QbYCOF3
	 NpM8h0bE+vpjEgrpa/ztPAZuKlnjNzeGqbYfj+fIhYdo98I+EQOOEf4L/XQVmlI/pU
	 DK86nviMitCI6RRFUK206ma+zUh3f3Z1EhEqrl9gQ6iGe3EdGjqZQghCm/xCWKKeD9
	 CQz2XYe5X18Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 783B6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188508746.14592.223729687221342322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e6887c2041fb288ee6b4351a42135453d3bb652b25bf9ce9ccbd37310cce15
Date: Sat, 24 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671885087
