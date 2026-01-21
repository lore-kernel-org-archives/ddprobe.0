Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258033A7DE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769034834; cv=none; b=apCNcX5xE7kpB9scjZz5ohBDiNkQEHZrkJbnZs+zyRUtz/jLnSiT+7kdN9iKeYRZg3i8K+A1mt156ZWVF/5OqHlW/JIC0cRO36NBHgwvT7eecDQcQ1fXxZYLiXi/dK0TNwIuZ4hIBGVVePh6Bn5ajR4jATLwdmAF9+jkwG0DW8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769034834; c=relaxed/simple;
	bh=MnkDS3xGUGyCSEuQtlQIv60e3+9vOd5xrQt4Z/Szvb8=;
	h=To:Subject:From:Message-Id:Date; b=NiycwR/uCVr1rNYtOTh4bxvo6xUUkMiIg1s30tA8UlxuY1HjklifBimLKoAARkbQNDb4Erqk/wNnjIsVgC4WMjq3aYWoCsur0KG38x1s/4pV03ynTq+at4p4VGRo322DX2llu+xLezghnGWEDw1dXLorJpX6rqJ03QBOzqU6Am4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE6NM8Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE6NM8Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B14C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769034833;
	bh=MnkDS3xGUGyCSEuQtlQIv60e3+9vOd5xrQt4Z/Szvb8=;
	h=To:Subject:From:Date:From;
	b=EE6NM8CrCUFlOlqGhxsiA5HsjSy06FhF0cDGJo0I/m41NBU4e7fZP3vIKgi9DmOZn
	 6U5MZg6M0MDZm74LTuNVx0fFtsSjfCdHJYUQ3Xk4ehU+K78G1Hm6TqWR9o4okXeD9F
	 OrBj7aoBHbjcx1TB8d79hogOcp0fH9N2mm2zfe3EJyOV89r8+wly7wU3QFDbW/Nl9W
	 6QW9JBvqXyAdkBLQZ/T1ArOhZCawlBotofgBmCmjw0+Axlvo9bWdhNeqLgdiBsnviG
	 LrMPLpuy8XF0jEMQplMngpXLvzc8EezvSt2m/4jDlbFZexN4jq6oXXJzKFBmj2JgoY
	 sNCxT5avoIFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA27C44500
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903483358.8701.7574366300148837906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffaaaadd446e1cc5d7da60614209ef4e9524c4a72ea0c0ae168ad15a901ce54a
Date: Wed, 21 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769034833
