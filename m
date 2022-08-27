Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B8417C6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E26BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661578852;
	bh=QnDT5KOaELSLnpOUi+Gx1AYhy+altux9H9CLXqdOICs=;
	h=To:Subject:From:Date:From;
	b=n1ZIpyQ/855ZWNkPI1yy+5+q8nZQ4KYGfzxfZA1OUf9tKT3vnmJMgzY2uuFNpBmUt
	 WDOFnbYFEOn2O0XHfi7BYNGeGZ8casyt6AeoKDKyBEZ0eH+AhWDr7v2ptdO+U/XvYy
	 mnHIxXWeUB7pyo+ievFtilrsegBCPo5G/spOvOKb+gWXGl06jHDue6w80zyNDvRxPY
	 Ai0Hp1k7+RZYlEQCSJi2ICskRyLDwEysz7iPurNBkgsB8srm8szC8rGEYULzd56vTd
	 rwn72DmaQ5Q03prib90jsZbNm8ugEn8ySFunuiEcoUpFRXd24MfBhaSUgRYn+XNg+f
	 eoNYp5OtVGAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5444EECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157885233.12887.6612640746577553595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7b7e4eebb24e53c24cede68200659f411d87f93de0cb79f5f3ae004b9404aa
Date: Sat, 27 Aug 2022 05:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661578852
