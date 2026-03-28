Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3412F332634
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774661694; cv=none; b=GNrNmM6rruaGqPcD8gnLJ1j8Ob7ZWcw+EZBECmmhQ1eF1fST9pUL7MRZH8FTJyVnXOFKmxRyrJRWeV3t8lWkBC4HsQFHYhgV+ytdz5nLJS3yObjZySrPkSigKR6DGrI2ED0c+4jd4qiGl/asT0hNenmvwZvtdsp1Tf4K8wWjvRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774661694; c=relaxed/simple;
	bh=+RH8LIcBBoQEa2ZhRxiydz4ghTnMVJV5DA4NiqF9x9g=;
	h=To:Subject:From:Message-Id:Date; b=nXmRBas+T2dnpVynZWUTFgjWb81e/DWV9nsi71lRjk44GGQPAP0htN33Wypd0rgYZXUOqgGkmzftiX1huKH9IuSpXvQkTAU9ZFvCw8h4jGEb3ifwo68aC+bubAzhIEFbqCQez1GlVe29dyztWih6d7W6RkdSxV79tr+TRXDO2R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sW2wkPLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sW2wkPLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B3C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774661693;
	bh=+RH8LIcBBoQEa2ZhRxiydz4ghTnMVJV5DA4NiqF9x9g=;
	h=To:Subject:From:Date:From;
	b=sW2wkPLp88C9PONnGujDMzgfHnfbP95jl7067fvm4F5aDe+10McR3zKT+P168kOOb
	 O4q74qpRC6PtmXj0s2V5qKvmjw1wGbxwj2SVtZ7VWhIlTxHFEF4WQf7ZuF9cBKXIJ5
	 y/t6pyXRi5Wghp8+ncRVewobl+3G8rlAbwLlvH1CKlqiZojbMqHZV46XSVEn3RJ6Bg
	 luVzqakYqLrEleEwWioLXZ5DMOn1PApb4MBr5hf/xU3iI8wuDXfHyr/iyM7aNuz5wF
	 SeiCg5o4W0u0QGJ4Jxm+wJt2iz6O284fMEFJDba/Pwe9JSCVeAlfvIYfBFhhMTyjX5
	 iym7WL+W8ZXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC410F3DC0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466169358.7460.6522705363327747020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe0df0cb815f61563e68328a41ce0bd1725ef0a4b71b923aae9f69c55bafd77
Date: Sat, 28 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774661693
