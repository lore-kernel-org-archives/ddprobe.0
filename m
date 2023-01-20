Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EACCB434
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6729C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674258725;
	bh=b11yU9vyqrlEDOECMUcSPx9Zd0LmEqP5/G5tbL+0Xn4=;
	h=To:Subject:From:Date:From;
	b=iBA+prIBZvIC+F9V+vn0U4dqDD5znn1v/8egh9N6A/BnBXt2duAeOFnvbboMClRt5
	 ziyl/NXgm6rAS8WHHaTbgWAqOA84N/k2F5JngqcPk1jXhW5asIeQv+k0ocllr9pcYQ
	 OmiWokfY9Bg8fcIaUdCOTfRUdLhprhQYWohMASns1aTBBrkNcQN7v0r/L104we3dM+
	 NFJDPI9xe/8R9hJbif4JhuROCfOl9RbzEcSy5PyNy3FfOA6YznZpxnSgshg5NRSYCq
	 glxvCyQ4ZtdXeDAj8boxUH8s7LgmZdbwDKXaklYz0U3NH+OqSSqv8F7LrboBI7KhYS
	 qYF04C+BmxPZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB216C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425872573.13740.3287919379860958447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdb6f8bf1ff505d4e4f540dbda2d927d1315c13541bb6583b8b4182f5e00c48
Date: Fri, 20 Jan 2023 23:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674258725
