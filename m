Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C11353AE
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBD9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693515248;
	bh=SMNGCrDR+1Kof6Z+HxJ217gvCw0OEYkt3GMSCki7/FQ=;
	h=To:Subject:From:Date:From;
	b=OECYYMtA6lxNEoddY8UbS2ch0pzHq2cYnhsHAm53R+q85HNkNrFv8JgGr1VaNueCn
	 lai14pzaRRryw85dYtW1+o6QdRq6laWEXDYtL3n3Nrl3P33rMBWO1JK6TGqjihzAZN
	 VkH5+o4kpINM7lP7/+jGWNKNflvKvheWneJiDhdLQlr+lN7eFEjGE+MVeGbtnCxjGq
	 eW2NeIS1LAKbZnsxTv4bR7FpdzkxmkIjc1ANdHv9Pz5+a7iWtdEZLoqrBbOZkv/NAQ
	 W69ovkwTyq/XY7+An6VWVmcT4eTML9F2IGsPiwjRZpEVnWYCkpCCzUj8ovWcuiv7kq
	 1B2b6Iyz/K4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF3AC83F37
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169351524870.6436.15697886145536931804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d500e4bdfa295e3d5d8d0e12b2b10a09b4cc7a151fe79c2d592d7c38a1fb0a5
Date: Thu, 31 Aug 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693515248
