Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF0223A0
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 06:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F183EC4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 06:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676442426;
	bh=wZAg5KLxmQDig7ptzJ+WHRYN2mho0DELBdZwlUQqogY=;
	h=To:Subject:From:Date:From;
	b=u7f2ARN2swyFeZLK+U49kKaH1pvl2rwd3Fy8tjebBgXoNGcuHa+EaoAfC6mZZqqCY
	 ac1U8zLunV9bBWGgSs3x/+oqCTCKwEHBxLYmGNrx4Sw0mgaFP6vuzq0ukYx2++90Q+
	 8cQom30Uq9v5CSFsM1vrM6gutV9pRFmPapP5o4P/srD+TdMZTJTyVqhf/eF+4lJ74h
	 ZoqNIOZxhHNssb9NMamoXb+c2SAqtU+oalTupdQGnZ0E8Y8SPaSwRml9vs6piiA/yL
	 v2adacGYToJFLKIzgyhuXH8aDQmB7E6+80uB26iw5iKw7Y4rHowCFpiL8tJZABApNc
	 8bCggAAmrcJHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14B8C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 06:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167644242585.30748.4924842459627757634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71a2c12a60a17960456a2713266f6530c5cd261696099ce08fcb92d4a2da887
Date: Wed, 15 Feb 2023 06:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676442425
