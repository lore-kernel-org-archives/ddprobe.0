Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9C6C950
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEEE0C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680629826;
	bh=5sAMSyOeqkw85p7Y/5BcqcnowA/g4INA45L+BU+cDRE=;
	h=To:Subject:From:Date:From;
	b=ObKcamRP94eEdoweRaLnO3BFx8y9IC4dVILQIvfBJUdhHWgGrJPLGBBe7jz/cfRWC
	 UipaHy6xzN4EDNhLxYr2UlESZdepBKVOC6+17oQeAoWAtaraJ5QzEifcC/s2aD5wCw
	 +a1MXouMO6C+ofdHr9bJwcfD4disEnV6ruvUPpyVQhZ9zpzf4KHtr1nEzACJMQQX5P
	 3PcZRsW0HCAn0XoZrwSqAtv/PWs2LaBHLswA6lyxahUwEWpw78hlvW8KVIHGtI/9bM
	 DdxYnJpcsQcVfpuv9lZgYV6541vdUNQqoUEozsWqSQs7L6mr4tcoBymDIW9DI8TBEx
	 LY5GPs4K+UsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB3EC761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 17:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168062982577.17209.15137230482594945808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f5fb8a0f5471337435078fc9637eff0541cd4c8b290d306c9dca32d6063e28
Date: Tue, 04 Apr 2023 17:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680629825
