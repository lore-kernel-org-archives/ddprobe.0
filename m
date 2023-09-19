Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C41339B3
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 12:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF08C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 12:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695125708;
	bh=4TA0V1e6NYt3DNbrfTFDQ5AHqyzRuSF30aQw3HcPi3U=;
	h=To:Subject:From:Date:From;
	b=FWKHbsyWi0X9zqfAL7vyvelHNWk39/YWdYX3hZTMjrSIDmnjCH8ZWF7qxD+hJ9/8A
	 Ez39uOh9HdteHkACNbkI5C9A5KIFVdS1+xY//JAaXs7cMvKWLgmhPWxQlah8+vYglu
	 7ddY75rwTmJ7mMYoMstINWAP3QZPIlo03tA4po4sn88DABna0X20GQl+H+YNJ37PMa
	 W6ytBvleQMn50prsiS23sr9azbMG/y93F2ZcEvEaknPMI6SPeo2LHRkS4ZtRMLY7Qa
	 DZstubR+hlRQ8ZSZqW+zv5+1LAKtr8VEw2KBcrwn/Q+qPnW7UpedP0WEckZ+XsERzl
	 b9Am4yGi9kGNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42E1CD5BA6
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 12:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169512570866.19669.14466313135135733201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2963cd62659e7afa29be85dd5e8385f357a28fa44b17eac8bfd265d75cb8b4ef
Date: Tue, 19 Sep 2023 12:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695125708
