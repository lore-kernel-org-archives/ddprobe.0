Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB850637
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70403C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663458053;
	bh=MMRDrT/Wmkgs+woM6f+4wUK+xZWMsJcfD8qyOeV+jZM=;
	h=To:Subject:From:Date:From;
	b=uIoOUGNbD9Sdi6ZFT7LDrGSbndGhYwySRcS9HsR1jqkIWADPmWgwM54GJbmkX1xkj
	 zBn85Ao/WFqikC262ZmaqG1sU20dYyVd8hYXaLcaMzLSrivXY8uqlYkoxvgpQ2JZ1p
	 75zUTsG43eyytQWXEd32UBU0zkYetqvrHb7olSKV4dOjwtLYeqf+hTxuoojZQHYE56
	 Roq7q5ccKEWtOyA8ORnahf8Xk1UPPsPVYxSo7i75l0XYPlL65B9yc24vxos699ex2o
	 bpFOX6ra7/9KWzkc6+/6I6AE3r3Q3F12OZm4WpPs+bud4WDh0sejQvJtjYV9THudXI
	 vYLDt1XBnVlqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5450FECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345805332.26521.331454242651087751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03bb576d9d3e8361452ca3a643ae89567749f3fe43511bbe04781de922ab7ce
Date: Sat, 17 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663458053
