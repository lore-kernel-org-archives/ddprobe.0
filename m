Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4188A13AF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 18:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8B2C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693245848;
	bh=Om239B4/NVyRakmuIN85aD+pUdeGQd2rMLjEneH6I9k=;
	h=To:Subject:From:Date:From;
	b=F8OE8eiYYTgcFt8alaJ8MSzpAFYEP/3KdR4pD3ycPRL7rMNzy+Pc7unWT3ziyzAJH
	 Hn6Od2YUiyTJQ5Pf3/yJ4rdDjfueo/P/H0MMSIpd06fXD380XkwjcLAbN8FnraE2W5
	 OnJO3hIIOxK5uddZpZez1lcFrGIbZkEFfUc388Yxrahacln5jsUSPE+QhjsFAo/LK/
	 dTgynUK5ry3l56ACqHq4KpGC8uYVCIOd46UYFG/N/D/BlBp8PpdH3rFUaaKVbVrDo2
	 eUS4wzi+/ARtO4Zd6hk5slb4zQMqaWW3hrFM0950wn8x2EXpt12UWfH5iGJqgD627D
	 iO3MsXsvs4nrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE9C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 18:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169324584870.6289.10035500412790040068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbd91aa542ecfece5f22bf704e527691073bab7d950544aa4a675f86929ca7b
Date: Mon, 28 Aug 2023 18:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693245848
