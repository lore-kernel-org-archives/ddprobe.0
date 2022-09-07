Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85787E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEF4C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662532853;
	bh=HC8HGuOPogjEBdtqZFwzs9KwSe3Q8p7ObVMJvX0NGH0=;
	h=To:Subject:From:Date:From;
	b=shUF4o3cxI80C4F3Byme62TZm67yZQXSOsZdHUdxhEc65gdjMBPox9Tcxds4FKBU5
	 P+41Ddtjgk6+prGxi1bxpCUmfvPWJxIYhGCJdID8lVUsN0DhysbvDRDkVwKUVFscvB
	 baHIfU4TwH+vrRh4VrOzQPTWNwjMeHKYeOEK4Y2mj9KJuhDnA9GSDfwLHVDZa+ncdP
	 ulfSpOmh9ScSUocNGlS/edSqP9lcYt0HpJzHqo+5LmBBDYrqSMjytKmuksjYF96JDn
	 Ui/fLEDuq/dw5i0QuQssbqJXQRlRhZ/YVeEz3qyvGXWHjOQHU4U1Va79l4DgYIl5Mn
	 UANkoiTrqbZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52355C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253285332.16754.10329574829277895166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcdb1bfee76e6c9862e22ae233efc630ea3fc4bc1339c08b1fd741098b9e2a4
Date: Wed, 07 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662532853
