Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5E5391E7B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792388434; cv=none; b=D8KT/gEm7VsC934BxsCm5+Rz/dLvsCbnqwguFRo+sFtsOxoDAm9kx/HpCelHZbzUefom5VR6T6Q63oXxZ7O25cfWpzxau65olS5dFMOwdXi2aNLWKIMqf+wH9ShvVggAWCfLeK/ejpFUak88oVOEObOf83W0+p2Qkirrj7kIowk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792388434; c=relaxed/simple;
	bh=hsLGPCHfqw7qRCeRbDDUlxbe9RqzjFCeWURZeQeiUq0=;
	h=To:Subject:From:Message-Id:Date; b=EP9b4LRZ3UW+gqY+4jqiHjVJqvqKfMdRaR0NGGPJZinE1VVzC0uRq1YeNI8ErPkWY8pDfr9Rt3BmJB4DMDpxoz2T2j1t5r/5wpuwom2Nszg/14kHWf36FgfUhegtXC0GuHfs6ERYpFtVyj6qZfHyonrMWhM+7qNoYVFAbEgR4RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJxs3b84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJxs3b84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E71C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792388433;
	bh=hsLGPCHfqw7qRCeRbDDUlxbe9RqzjFCeWURZeQeiUq0=;
	h=To:Subject:From:Date:From;
	b=hJxs3b84KMM8qXbcD47hOaf+FjZAd1Q+p0eppRkTCwFx3J75O6DUeJILGbVgBiaJZ
	 ST2Gp7B51xeqS/+hoLn6ZLq+EwweDLC6ynKKspLB2iXyVm3UKmKGg+1tMMj6dafYGj
	 BZnrSHa8pe8yQbGjKaSr7HS0cnAh6om6nM6oTquq9jLqp4yR3hqhE9yKV5zzBCb4Pn
	 Sw8CSGUCrCaJ7M/jL92jjnxq/k2kgvRqznaR6uqWfOBi6p2b81T9NydWImWZK0KC++
	 DCf63VT2qHK8G28OnhWRw9iPpQ3Q4BPnVuCu6bOSXJFoGrGe753KQAWa2WwdX57UMY
	 Uq+Q8XAtfGb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF26CCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238843373.5140.14655299516829074231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2406071548a5840238d26a77ba0d38476e71229ec739cab4a95413cddd6cb619
Date: Mon, 19 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792388433
