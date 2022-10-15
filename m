Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B436E7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F0FC433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665805253;
	bh=vEo1NinP1KjtWENi9YHWVtTP0v59FcBkutyPrWukoQo=;
	h=To:Subject:From:Date:From;
	b=WuA8iuVpcsJDbsVCenNO285FIEhgK3eGXj8m3ewzpvP3RCh7XiOBpcz6DMHUAqUWl
	 lm54LMI/joAnKPb83NWqcPhQDN+Q3qm7JfBFQDEHoUESaWwWxbSaFkqRpArVRUZIB8
	 W8BQkfWyqWQY9bZ9xQHmogErUoX319AVKkLVxDLFD5IRnzoEa4m9H1xlY7FpJp/qa0
	 Kdaf+aFjJzPEPlAtBS9GNMqGlOYXdLwGRF+od/uzw0Oz2L7Fk8FsGgGqrnt0zvH9Ua
	 zWIxVNb/cAS7n5rw6Io8yCNPIHMOmGpNbw5Pr58vOWJedS8KbzbqAGIVmaw7heVute
	 5LIpaGzs3tfug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CA9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580525333.7523.11323454601862940920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f311e917174537916ba77a3c4a7ce339dcc4482086eebd7beefc00fd6e80643
Date: Sat, 15 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665805253
