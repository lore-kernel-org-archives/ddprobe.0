Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F419DED8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0C0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673833887;
	bh=szsCJgQZAjXgVDjQo+RWFPvz0O51QFvjobMFq3JSk/Y=;
	h=To:Subject:From:Date:From;
	b=a3NTYqvZb4sJjhKpySWLaJimdRvVxK/SAIXlSEOXm/Xo5IvB7Us/NgVzgYyEVlUYS
	 ECVzkPGdEbOk0zUpAOLhCydrLxHCO76KgViszMG+N3p/kicvArQPx4/CRNIwDnhzXF
	 1rirrzsBDvcIYgDRNnGzTE+eMwfUc0jcALSF5GHTVkO6HReMhD4TrZ0+tXEuk/rtAG
	 LgHuH1A7Wtmn5RRZN6Lx7xNemxddXlJWxgUBoM7oLlJ9ZFhTiBYg41HDEmqLUYlNo+
	 CWaIzq6bOXDBK05Vym9laB7fP1rYllHhkMp/HSvGelsF9+JvRXsT8viPAq8oOYh0Rx
	 dMJv6qkynE/VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79902C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383388742.5435.7896226587867444102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e147bcb20385c91c2012fe7481bc605f58cf7b3e5f6ab7b5633694033c3fee1a
Date: Mon, 16 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673833887
