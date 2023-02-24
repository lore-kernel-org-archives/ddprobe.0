Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577D06125
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2448C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677254106;
	bh=gRZnVSvo2ycf8gYLEeCU6YHT2imOz+Bo+FtW6nLVwlw=;
	h=To:Subject:From:Date:From;
	b=p/5dbQeotWg5G9D59lvMV3T+oNvJ0ceZVyA2uJHJj0Il3GZcgdt02vnozM2B1AnFw
	 GkDyN7Y5sHn7MB6c6OjTvU7aXiYCXaBgyzzLouBDiC817LDoSuTvLeNcvDD1LGVMqE
	 e4bRSsFrUtYoQjjR2Ytm/gg4uFehuFVvtnkDXwWthP7kgeussgaif6FqLdEZBeCPAt
	 XFBnNPohoc/V0+o06vz7k3wDwNrbKe6Ge/EY7vzv3ni1ThjaQjyhKWYVDg2/XLVG2m
	 rCICdToGjhJq8A0w7aehDYNJAEssQ+zp4XwYYQybUDoayBc+cqE/V4Z7klFlXQoS1L
	 k6Wmku3ORp9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6B23C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 15:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167725410587.12743.8660742633729384591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4529c5405a0131d525990d519ae487b46db5910e24c6b9bb6d46d6410ca103
Date: Fri, 24 Feb 2023 15:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677254105
