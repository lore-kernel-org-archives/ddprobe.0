Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BDC7E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F56C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661938853;
	bh=DURcAgdkhJD1X3OeQaYn+W4rhq/Lwnr10SWwmCy/yBA=;
	h=To:Subject:From:Date:From;
	b=p6WCr/O+4y/BQXXnIUcPipWnA5EsqHfKdHDQ6IK92Q7eF82JD6tb7tiLYE6Akxk5m
	 GmmgYBvC3Ahnx753S3trDyIoiVTExYyiwQVDjtJDhwUqplO6Z+Lq3ar4MowsX9DUet
	 f1Enk75Q1AYKEQzoOGaWosICotv65qGV9KgpOkJ9EaezdVFFOp5Ota18adPhh5NsSc
	 HQHgbqIFjwk6zDHDVCFEgbEcvpyyuZpfQfeb+F05Gh7lUfLbU1E/lC5Hw4ysYrriR4
	 xQc6E4akBYdBpgp3COfEdMIqokpHGBgga2Om0Ke4Uq37BaTJLtNpVJSzjWEhVQNVg/
	 UwUW/6lIP6dpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566FBECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193885334.6059.8102130674659158163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfa23169d68fb94e3b9815620474578eda56e674fa31dd2ba6c343599f8ba86
Date: Wed, 31 Aug 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661938853
