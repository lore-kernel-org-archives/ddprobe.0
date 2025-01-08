Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE121F76B1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736331954; cv=none; b=A+iJi5gEsXE7IJIx2SnrCpf5ZsC0CyzG7wWuXyoSB3yfPz8V7JDg7wPI21kjyzWUCHPltsrxfUTNJFsbJdXoEEKKWa5p9rSz9SGvlzaJq+e0Ns3iGAXEKaHRQdHmbvErcrfv5BSF36xu1GX/mP1vE7gFdSPFSJr9ve+ECKe6Lrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736331954; c=relaxed/simple;
	bh=LFi8meB+m2L8yRUK7BcrdWClaP2XrScivcxYT51tiVQ=;
	h=To:Subject:From:Message-Id:Date; b=csRUzktJ6KGK93TgwStOJrwG3nJNXEAv07mb1j3UVf7j65isdPzYVFnkVHLnzM6Lcy2lPSGVcuiR6IhbNKFaZbXsk4bur/jz3FRybl2j5otNNFvn2iKgTo1ocBHpLF+guL63RJHpHHfglW/4kOno340FRdtGpPeDBXG43xNu8Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjrjAyAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjrjAyAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C3C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736331953;
	bh=LFi8meB+m2L8yRUK7BcrdWClaP2XrScivcxYT51tiVQ=;
	h=To:Subject:From:Date:From;
	b=AjrjAyAsXSPWVWx4VNQlSb7v6ijny7sUJyofg8N7Sj090wUnLWmcQdrDYjav10WMl
	 vsK4HodHPqZEBEqqoWTGoF2ZO70Vc+Rl51IQuHeDBXFBdgVNONaDSZ4ZBt5fjXINnD
	 Pm+5dLNSaKo7Zds36dXWwTNeMPmQvz3We/QVqy8iS6UR4GkElql+4a8YazA+iDlDL4
	 APOYn+jEeHTB8caNkPBXXJXRnHydzqUcKevEBDgZSql65JQbTN6z9Bqn07WYYovIEJ
	 jtR1evDGehENC2cqafVPmi3f/VkndYVbmpGUj5wqec+eW8/vJLzHa0T2ol0T/jRFtP
	 ULsy6lVKyanxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EEE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633195359.4690.3133890874798960029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd47151cf426d977aa0aa3dad7bd6470fcebce4824c0b7d715f23e14c01864e2
Date: Wed, 08 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736331953
