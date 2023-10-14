Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD927E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 05:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FL0KDJe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9DCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697261828;
	bh=QwvIfvhYem9xpbK4wR7HYcquEkXo7ZaLXqgqVGKCeGE=;
	h=To:Subject:From:Date:From;
	b=FL0KDJe1hxxZFaBnz+91Ti0i+ffXR8vROp3f92YHmPxcym3uh7GTTSpkO/TOC/iBb
	 znFddWBhpGJK3B7h/c6DO8CvKU6yUIetRn/kReAWx8T5fLL4CpgA22JsiLCv0YsBUh
	 abBkm/AY7knqmcGHjuPMnZ5DQ0OdWraOTDnmemNiacbb67S/xMEQ9Yq4pwNTbGbNsr
	 qePpxgocgQDa1AlAUH8DISDcq7XU01jg2OzWL/lYSPny5bR0KZKN72X8Tv6hh+67fS
	 jJ8sw7KbvucBoiXOtij1RKMkrV/V/yDtApnK025AFmY+aWa/+gIKVhc+WuWzDUcujK
	 gzCYCX5nW0XHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FAACDB482
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169726182866.7613.13452431799321669873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76db09f9d859a6e3ce3ab263ef05ea7043e86dc3c6719d1e30ae70263eb3231a
Date: Sat, 14 Oct 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697261828
