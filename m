Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364C0158211
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713996083; cv=none; b=YTu7X3lhz/dSNw9zBNJ/J5F5pZC04rxkfOiYngXkRnB5ZIMQ/ql+WBXPPKGDWrWAXPIlsb47UPmjzbQ4AvmTAjWpLZrtMaKwAH1tI7DyR14d3M8YE7yb1FTs/UAhcXqUfBPnK4Aq1SJ1UZDyn9Ptzin3IBwgEz17+k43KN8ZQT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713996083; c=relaxed/simple;
	bh=Qk5W5Y/0vcnDHQeESF/XOibfwnzWVlrONgbuSwcXfOU=;
	h=To:Subject:From:Message-Id:Date; b=twv5nrCwA7QDF7cotfAeuXi0w86eKffeRASqaN8/eGn6NvdPZEmWYH6+RabqFMM8gezL/RVqQSi5yl9o+1tSNcVJeiyUyVN8n2yK3lFB8nwD3efJYH+pvEJrrtDCvDm+AX2r6btDEnx+EC4qUIRB8/fC3OmSLoDy/7Onlgxzwsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw/n/J9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw/n/J9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D6C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713996082;
	bh=Qk5W5Y/0vcnDHQeESF/XOibfwnzWVlrONgbuSwcXfOU=;
	h=To:Subject:From:Date:From;
	b=Dw/n/J9bnabViZ9mAmiYA+SBla9Tj1/OUNpAbueZqa3v+4mu/1zrcvU1op9/tHfXa
	 I0Y2e20r3GqsAQBYrQ2vL+oQOI7++g7pzohky0FgzJ3Sal1p7L7l+jR3mKCmV95lab
	 LG/HJcRTV7tyZCYAQ+YWhVZCI7td7dt2TP3QeNaHG2XwyYW29vSZ5ea5737leQOgOe
	 ejto4kL7EI0piWYne6k5htpR+q2JWf1RGjKXf+aLbKMb+UnJfPidDLTsA2XbZPT6cD
	 WVNdJRSVvUEUHITzSFSpBZPqCTsenEOHEe7gsAmOSXX8P5BK5G7z7/ZaJiTrYGwpMe
	 XnrP9bwl8mokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB7EC10F15
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 22:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399608275.1259.13732449134845926788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0dc8c7b2b6b2b090400779c726f3c469d955fcc9c21d952d505f54d9870445
Date: Wed, 24 Apr 2024 22:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713996082
