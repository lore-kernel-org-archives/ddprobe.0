Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF8A7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 00:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFB5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 00:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677197105;
	bh=dtrCbPem+xRO1IyTqEX2I55XBsal0hQnqST7dz8IiQ8=;
	h=To:Subject:From:Date:From;
	b=guIQcTtKhwySkV6eKq1KgxruBx6RLMUdfrFPdSkjCZ+gCSxfLgT0L03DvNIh/+Qlg
	 rAM2ei/JVInDUpbzzDc0V8rvr0JHjiM7kIgD4FFHUN4/6r+wBYAZWHYfUnppHm72lj
	 OTjMmBJQa88Ifp/ONjPzWa18CjbNSiIvjwDKxGaunmWMo8/7/Pv/coHZRK5OX4eYEZ
	 4B3h9NtRk5/KJ9cZ2SOt33XbxyRIJpDQuOTeYmo6AZ2ncnATPmPuFuTiXf3Wez/LsP
	 gcIKJYjNLWGnGA/z0bGp0nSnxuc38Vl6pX3Qi6Hxz+htDniAapY63Oau3qsez9Ee6V
	 DMoXrBOHx1wJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E76C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 00:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167719710573.22714.14890914230953555328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c80f3ed3c05bca54aafdd20ae57b9982552c2263aafe7750ef4bb6888946560
Date: Fri, 24 Feb 2023 00:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677197105
