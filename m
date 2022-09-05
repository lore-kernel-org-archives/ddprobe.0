Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AA84C7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDD3C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662414053;
	bh=4pblN0K0awlUN3Lbk4v/2oe9qYLXTK0hu/+HUOx/T4M=;
	h=To:Subject:From:Date:From;
	b=WOOfTNjI3SlW1fJeZgtsgvgUlmmIGIHb2Tu0b+PkIhct3bgCPLxChUOvLT1RVd6Hh
	 +8Wir66XTxZuLedpvLYbdGaSAlCSudxYuZGJdtu5I8KghNgZMA/gqpdXgufT9znHZh
	 zoC8sl+AWq/41dJ0I7xSuJmTTjRw4S1AjVdQRm87Om582FcVlLxxU8GVWs/DsNwycn
	 jhdMOM4u+j4sE1IqUEQR6eVjMvoFdhlOY4YgkojVxYtxc0mBmkeCOBldUjMu2FRAxg
	 qmzGd7Tc4ljAu1HpD+DF2fVaWf2DwyKVm98DgizK+SzK4ONsXi5RheSceMWNVjenHG
	 /tHYK2EAyO2Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51776ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241405332.12963.13162332689814738610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50b0b01d5c001ce0a8d2e50e820d42b44da9464d4f150470fac6a81064907ea
Date: Mon, 05 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662414053
