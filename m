Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FE221D5BA
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746737994; cv=none; b=iStKhM/234Ybc3Amj6FzXJqdZMKWyMmgjMWbFpza7qmxydAgobFKtCItbinFxN+9Jj5TLjCItQs/qnlCyrT1fb0QXp6j+CRiR+cZYpGs6RrzHn6UcON4JYOjKAaj1XnjgxHXtXuLEiGCOiuHekBJTTPmooyPc4Cp8UNrtZMSWRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746737994; c=relaxed/simple;
	bh=nw6OgUsZXX9wfiobMz34+SpV71y0n5bUY8348Ac7gU4=;
	h=To:Subject:From:Message-Id:Date; b=bt8jBwWvNutPuoRbld+2EXkoy9F4q33rR6lDuTK6Oofvgyo9DGnLVYGzCNnCDR3JhTtoW23JylCmLKkrZ4Xhp5iUY4J83AOBu0TE0sBDZXtzmADMgMM5gXEote/1YgfgTbq2LWB+cBPV2e32CzhFoJ1bGmfauIDIVuTt7HuhAiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN/+yGS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN/+yGS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C06C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746737993;
	bh=nw6OgUsZXX9wfiobMz34+SpV71y0n5bUY8348Ac7gU4=;
	h=To:Subject:From:Date:From;
	b=jN/+yGS4X7h6QGD+2DQOMfPZCDEi8W+mPlhLRC7+Owq+4FyijjTVaFKEs847iwyTF
	 CqycrlpW7/pkf9k516/0kTgbFLykNGjOK8QPbGON4zG/ecgEOBRfdLmJ/qnj13mk5T
	 P4Fi5Z5bZZlv5BVd6oon/L3eGCwtIL5Lg3kHmAuK66JG72SY1cITui/nK9xkrTCM/7
	 RlU+FI8EmG5m902sn91iIlnW+FGaKyVr+rMAU2o+nQ/rI7GQv9kRs6J+L7c7XUoN/0
	 CS33zlREYGzSnobAmZiWusvTM6JagCMEhmVA7GhsBI+tJ4K040RpQkT0nsyEHzZ4B2
	 YmQ0oIxHthJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7BDC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673799357.29554.8727574219589590174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfa8b52e4c4c4ae895e863a1d99024d734c6370ecb29c31d04869f62c0406d0
Date: Thu, 08 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746737993
