Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D994C7481
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882A3C433F2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673362887;
	bh=zQNzUtZTLxmTiMq6upx3x95oXN4zT3S73Lv84gIgEZw=;
	h=To:Subject:From:Date:From;
	b=Bc4xDRSsEj11iixosY608uZLA20xQCJ61bh+RXvaAzrDfP0OboCcpSgdqKcKvz5q1
	 98WxqanCxJYbqKRRvUTSwecHfG+eBwjbqDu8TGky0TQZsnu/MYfXcbyskMQkoeD5Nw
	 L8AqPkxsdw2qr+ZTLO24pP6bgb0ONu6QhKh6zI9QkuS7HatbRjx82e0jFXKGsF2/3p
	 fZs2Pa5qAuLMJBh6tCfpAdTZj9SbuQGy7+3XLDgr/14Z71abMy1+AuAJV8HBzF4M5y
	 iJnbVu3tUhJPlM/HF/U6fNYz5NEVRmxKwAC9/66ei7wLGr/TOT2+AvNxwJ89nbLn27
	 9tKJXH2TfZRQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C69CC54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336288743.26566.13889342795274902466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c37f3aace0c8cad87ba6adbc0da07086e0f2821e60e0638bf1ee5eb6aa2b4f
Date: Tue, 10 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673362887
