Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4188113C3F2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745175594; cv=none; b=GBcJYKAh6+ACdcz1S+hfRLnOef8iDsrlff+oyEKGD5cUF33cImtF5WU/lBQiIyp/X66MspMbphzftg+pJiqBfldNIEwPjNRSG9GDUEfIJ2mRWksDpfnPzA1cUG+qPWWTNBNuhQoBFwrpTyVnV09+1tmCKjh6/sYs6DfXJ1+hdTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745175594; c=relaxed/simple;
	bh=BSsKELtWjd62BRN8eSRSi/h2liElGNOZFnioEnhlFcA=;
	h=To:Subject:From:Message-Id:Date; b=Xpbhrq9DsA/7ZkNDMQG5gIDPddcYeIJnTkhxpQT4CjVNP10cJVlYvmUJ6pY/7wHK4nrPTZRHSy2D/K2yoTTVf7oailFxwnfWyx/C+saHLPez3hxAWl1mnzLwJw0TrCgzi9S/lI//LYr3FCcQkAejqU//WdOk99zIOj3UGhpYLMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvCDuRLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvCDuRLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A1DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745175593;
	bh=BSsKELtWjd62BRN8eSRSi/h2liElGNOZFnioEnhlFcA=;
	h=To:Subject:From:Date:From;
	b=fvCDuRLSezpN/OP85XDtiEu5J6w3ITRBx25bBWOdtTxoTJg/6vneRcTIVpual46S7
	 Q9lhMJrFfcxIuh5SDwYVWu9oItJdyKZ9+1sQniQ5+9bpvOCE6VVPaHIDjhpof+2M05
	 IblOdE7pkLQjd79EyVi1KsBpwfSXqtFFhmTn0mk15WGERZcm5MRzLJTaN/4oFRdWZC
	 59br1OiirtZEA5uzM2IN8CcIO9yviLMvM3RBsG31SZRE/hI8e2Tm6druBTcYKPbDRF
	 hOeXOiw9BGcr3TW4XPvNd3MigGYrMBITXxkTLBWEfHSGNC73ZXK+pcL/lkrY5fwx6Z
	 Cijp78b6/R69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C1C369D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517559358.14536.563226222061693771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6778700b76f9063e27ef12c8897d08149d157fe6d659370fe5523a9faf44b060
Date: Sun, 20 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745175593
