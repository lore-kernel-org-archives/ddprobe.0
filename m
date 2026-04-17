Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF3034CFD1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776452854; cv=none; b=cSo4XL3InFViBhPjTRDpg214BebZ/o0xewWM/wgTQW60YRiiu9Trk11KI1TKE3FWdgO9WnVx/TUAbbz3kY6G5H9UVVpu4DHnV7Lep6fUXtVpwKSI+25zRqsg1WAa5AZJGVhpAt8ucjwRzPE9/zYTXlNEo7MLGd9Fhe/MxDHsgYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776452854; c=relaxed/simple;
	bh=cBotP4UdzH3KKNYTneppb2JkdU3G4SFq94c/MvNZJbU=;
	h=To:Subject:From:Message-Id:Date; b=Wsa8CV64efgZ4dempPSvHQuhnQc2QJuEiTwzvzhLS/1SXPcGyXwmpCF0RVRtXdg+To43bm2s/xU3rH2x5oCe1Isfo9jmjKybc5m+D/Rphtgpv91EumHXs5nsMCgLYgosHbhBy1EnHx00Hcxerj/+oUYTTuNMoMo35iUSFC9tdLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2jSCN4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2jSCN4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8390C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776452853;
	bh=cBotP4UdzH3KKNYTneppb2JkdU3G4SFq94c/MvNZJbU=;
	h=To:Subject:From:Date:From;
	b=P2jSCN4gUFdDpl1f2KWRuKNSuKc3ePy7WF78xnT30ifH5fHGEYs1TRKQ9WYiIgTFF
	 a2hwqQ/4ugwCzz2962bOBs2sWbEq+fne1gtJWsANZ7KG2pX4Q+lzFvNBHjOMK67xTo
	 OOVbWofSB/WWcGyR49mXji7NaDYxRgnIsXXBBEqRpK3X1oEhbOY4e4UeyFMEsU0wfv
	 Q8jwIcsChN2sgjJqWKPLnzjmCdHnaJ6cwfKnMhPj0JP5vfQB8mZfraP3YlHMH5kzI8
	 oAPRw29G47z/Vjaw6naivlG2+FA/uzGaMRuW73xvRf+IU4u9IF3wVijYnCckf8SNQ7
	 HbhKHuRI4AoKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC5AF8DFFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645285370.7719.972903958356504536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530e935fc92c120aad5f71109be754e372b8f4991b913b7546e8da7a09c75f15
Date: Fri, 17 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776452853
