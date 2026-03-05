Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036122405EB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772715294; cv=none; b=qG7R/jRmsuOzo33uIDUpkoHE7Avx8EoBTSi7Ee2Bmx9XNjxPKILgUn8+El3NW/55ixP9ZSRONqAmGSWSlprYWWJCY5ZOHRF0IdmVmILTr/HM7qnhW0kmMnGFf1C1525F3SQLp6Kiqp/GfeyO0f3XoqHJMak4rhNM6hq7JyDlXYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772715294; c=relaxed/simple;
	bh=W16wNpHEVlcAXwGBMdgbu+JQ3uL9tU/iCM6PJ3wRMtA=;
	h=To:Subject:From:Message-Id:Date; b=hDZRCePWfVh02fWopwPCs9EnH71XgkSxxHy+Xx2tIQ7euVLz8Ikyy+ADisIE2rF2Br3wCkUmhe6rQ7SRfp25wkWoR+2kefSwOoTLB/SWM4Ani+h/+zzU0RbX47Cco3ZdLpZIk8CqwNj9DDkN6+MPmO+9kf4+Tn/MWnvCsyCzAHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwF0dqLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwF0dqLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10BEC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772715293;
	bh=W16wNpHEVlcAXwGBMdgbu+JQ3uL9tU/iCM6PJ3wRMtA=;
	h=To:Subject:From:Date:From;
	b=cwF0dqLgWk/bHwwZKHNXBDDoqsybdBWLyzCDorSMfVjP6b2Ps09W9oTu/8SxlP4nM
	 o0jvnQrMyNtXp+yDvy2pZ4CqmlFr/fU5suSHbyXgOxpQF61KFKLGPDzyZJB6iYiwc3
	 W5m5rHfcxGPe+q1eJq0cS/tuxzm9/3TXYJ3QkezsXYs0PB1c2i/jw92I+XiFDNpis4
	 +7t7rlXPaxWTR42kVVr3cfbC8nK8nVCe2MhOq0vELavgJyj7Wsg9Wiuhchi4JNg2iv
	 0+BgkjAGB2+VdO0Ud7xCrAFVfRmmjcQQNHMNeVI7ItviowJ/jPWPLFLZ/R5fiGMT/S
	 /A4J3t+jjAdlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90975F30946
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271529358.25484.7175120092817975165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b576b0e0981e7bf088c1cf6001621e71139b1008dfce41141c858bd352d385
Date: Thu, 05 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772715293
