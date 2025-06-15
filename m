Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287642E11CC
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749952194; cv=none; b=he8+VI011Qcc5/FdLJl/zPEFIKy65HmGrIgPI4YDneWxUFbE7r6i5CHfA7gDMLOUqNQyPtK4jX4Xx8vL0Mr5TnS929/59WurdjN7q/fqqPEzmzUwX/X+HOvugoRWXFKLM3AWCyEECJxd0vnb1iAbaCRuvronVoJlomh6+tS9mFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749952194; c=relaxed/simple;
	bh=8OKPueYa+vbU/NIeJ3kNqL2e1yW3ZwRvB/A6pKp1aFs=;
	h=To:Subject:From:Message-Id:Date; b=iVA2n1QVwqFsOivSB2Rw2t03xF/RQ16MD6UKRJHRfouO4FzwI3kOKbPTZ5cd7p3baj95XCOf3nWgUrKU9b0kckFMSslr1tGb1I5VbHPzgpiwarpA+F8XlU3ohYOYmVLbO7UoHeZX07Ylr/WCEIKIRgwLC95EVIKJEIRJitNNItU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPK1UPY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPK1UPY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE264C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749952193;
	bh=8OKPueYa+vbU/NIeJ3kNqL2e1yW3ZwRvB/A6pKp1aFs=;
	h=To:Subject:From:Date:From;
	b=DPK1UPY0pVTUda37uDuEtDO8gp03waAtvsRr1jmJZ0BLmhpvg7FX4B1IJfbzXmSQw
	 O6XPUmbNRVhu91/EK8FGzfvnuXdACXb4poqIR6uRj81uTxakntcbiQUnvaWxX1SdKy
	 /GCEFGrZcwzwqnNFMY4LdHuxjp32J6nJGvp3MArZi+hCJPxn7rLqVw9TYqESwn8J4n
	 1vP6wMTbdIw8iBerXTLdnSLgy++G+nJ+Ref9YoVW8khR5yDC/SQ5HFsY7fpDxYGwNV
	 IWbr1n5Xqnu3l6VQbFLYBnQMWyYqYvIrmFElm+W+eLc2Ge+8Z50pRaYRafG5xHCD4X
	 9F6ykkl+fi4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDCC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995219358.26573.2365776331699010028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a675fa8d6d09c1e7b743a9a927189a267ad525be11587717fcad60a05c2198eb
Date: Sun, 15 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749952193
