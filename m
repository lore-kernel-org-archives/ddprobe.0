Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4B64682
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711A1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664215853;
	bh=uZKpSbdytHkXVqTH27EaIzd4QyjwxW/pSemjVfFgUnU=;
	h=To:Subject:From:Date:From;
	b=bN3jt9xMYo2nnCbHwme5um6mcjnaOik3987pocPfSrucnN+wOipBvvxSipwes7RUk
	 aOJr05lk7rBqvGe0bc3P7QRYX0S/2I7CjtGo3I84xFfe6x1+q0WSeZYD9qKMMCDFCS
	 NOa2rkb7k4enRt+rh+HoO03sONviuaZePBxGZ2XN0TI5PeZxz3I/kFIfSoGHmqqiLG
	 pAp9wBzfmhOxe6v1bnH37Qvj1tQRmurEj9hGyVfY9iF3Mechak8KJXRpX8kRAC2uou
	 a9zWN3Kh66+Bsec2vzb7nhAOyZpDrdOs7URUcx4CVsPm+Idew6yZxSe8buMPTfFn7Q
	 PTIsbAl9l+lYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A836C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166421585336.3659.11383608736553064327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb3317aa93ccafe83ac5c01c423761ec1c829f4c8a4a4cbd472e7c97b2a676a
Date: Mon, 26 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664215853
