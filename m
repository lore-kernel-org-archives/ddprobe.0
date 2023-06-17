Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9081710EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC378C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687041608;
	bh=8R0uY8m5Go7zgkGsRvwVCm4wc1i+HKC/H+SJP64guRg=;
	h=To:Subject:From:Date:From;
	b=jDMkWBV7dojgP9hJFvwJ2W2sdE9CBDRNtFJ2dXABAwiDrOsFJ3hdLFFysH90WA/Hw
	 7u/yXYI3jtBx5j3kmpLl3TTR3oo/7TI4U7pZUjhBJoYqwS+bgzI+8CzLV8RuPnAzwx
	 UiVDcVVrgFI3+1Zy6bFgRI0wOgMZbd2qqchafgjtn5jmRPxDGcr5mtaDBmAXZCprdF
	 +V6CaSRcfUHnBdPMVQMdjPrfS01NYpP8FFadavYRPO0cVqiQM2/zZVEs/Laqf6KoRG
	 iO638FbLynPpqkLw/uqIgRZeRyWP4f7bJ8vxrw4JCzpsQ+O/WabVu+csjG9ELZBmw0
	 DedKp4TcQ80TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB9CEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704160875.13529.13273683259344005337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e554d35ed933050102eb56bab8c451332881987def25e34b73c1d46e2e98515f
Date: Sat, 17 Jun 2023 22:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687041608
