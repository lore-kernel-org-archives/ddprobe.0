Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D618F378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B415C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673496087;
	bh=sFctqRmaajEjyfIu02+sk/vsUYYqsb7R8AzvmYyWZ5c=;
	h=To:Subject:From:Date:From;
	b=kF0OKrFe6yjX/hSOt5lrVgIqLhN9eHd1nY33lWKkid6fQU5TFUKgCRvDMg45BRQtM
	 3pCIMslLcwL49ruJEMNUKFm0NDHxUfgW0PkxJxKdrDyoTxVGIOrquckhr5t4P6djbm
	 mj610O8kIHMIhKMLK6iwypDQ9uoWwBlzJx2Err3XxKhELeU3XykrqC9E/CB53ziFjh
	 uCjlUQDzUnbyWx0EPfUvbHtURl2Uw7D7u5sh/cMMrHs4nQTzRjOphCZqHwkF9BaqAZ
	 cmVYwxNzyFK0nJvQhicln1u1ZyQw7BlAOhxq+AeTXVzRU830riWltBYRfQOdk1kXgU
	 RY6LoRRkvWImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB88C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349608737.21940.484797687042696761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8770bdb70023d328e5657c690794b4756f599ab283cdab0ab16abcd29d6e29
Date: Thu, 12 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673496087
