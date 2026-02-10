Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113922E8B94
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726234; cv=none; b=BiWFAK31ZVk2mRpuZMDG4AYOpPS5DyzLFl3P8ifl5SzvJxVpTQ6Wy+g3Rq3fZKrkyENPrYleQCCqCieZte2gg0uMOTv2z+Eg/k3+BLWOGaSuF5/AVnpJ8Ct6dFjbxOwe4VetwzyZnJNtKLIP4BUIebvmNGkHhWg/VhFCj3VGGgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726234; c=relaxed/simple;
	bh=afFL1gME2dSfSVgwMJ5hjzGfbxzJcTdLyX0moRq2iRM=;
	h=To:Subject:From:Message-Id:Date; b=Vk2Z5HOFTAti9JCzmFNhF1Cu8/2wX8O05Gk+EWvIEWCNzn3npsk91XgtKO0p8MCzXHByjGUdqlRWv5syJEdSGcS+rPitm5ruVubLUi3xb7/VzPYSFw2kcLN6l7ALY4IG3tcvK8LMRi05yXpdM+gnjz5itWFK/ieAav1+w4vSLAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCeF0s/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCeF0s/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE16C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770726233;
	bh=afFL1gME2dSfSVgwMJ5hjzGfbxzJcTdLyX0moRq2iRM=;
	h=To:Subject:From:Date:From;
	b=JCeF0s/ZCs878sZrPQjLbduw/W5He5/Ptg/G8e/CUZjrrhjLJp2sQc7RgyXnvr1tz
	 a3kVeCDwY9dOolPcX4AM29w1Zp0jS6xF4a456vEYyCiiwMlAJJbJLts3iX3Ss5Te73
	 4t20lcXhew5yfgyW7zps1YgHNvQt3T9jY7nb5zXS/G/8izilrxDstmExFTtFJ5nsPe
	 z/R4j7dL0/1EC3NphIQ9ovWvZRtRRKz2PH561a7bF6cJfG8TTpF/GU7K1ULlXl4d0t
	 ZvPaNVM9HNqrFRur1VwylBXCJJGiV+LnbdLnrC3uUHP71H7DYpBG2HcMHK6fJDgJLm
	 QcISFCzx7Ovhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C0EA8105
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072623359.27416.10902262550550081508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc665f223ec558b30fa812ae7106d0f9c497db4191cda206a26db06c086f304
Date: Tue, 10 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770726233
