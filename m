Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED45615C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94562C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672544487;
	bh=gJr28ne6lOBxutiJLzfoig9AEhRwX3uA6c9sgny6dkw=;
	h=To:Subject:From:Date:From;
	b=OglJu6nZPo/OingehTfmd0dNgZbvfxrhr+qnS29+4pyFyDjH4syvoRFTv7iLxjdTW
	 zTK/kTuwaDpVmziVN7QD9nZE5k/UzZQ2IuW96plh4cpFHTQR9v8yzrqZJRSRAF2hqX
	 v26tbVjYv7zJ3dQ1KjWwGI+DIcSNaBqNiYfFbi/2br0O1FzdDPUpHyjwafzDT3XAz1
	 0grGd8K7s1kbGSxpUq+u2cjiJNFFZZuPvE55QTDku1TH1EDTGTLcf51yWhIURn4Rdp
	 ntGZ70w8SirQzN1Oq/4RcuwHLtI2/kMShzYy8bmn2q2RShGh5gds+PZAaGbwaqy3SY
	 OsYVcSUQ7dWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71706C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254448744.13444.14489160218791016074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2173089b6b41ce9403f53db1ff2651da617a3043e6c42cd214323778ddf98689
Date: Sun, 01 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672544487
