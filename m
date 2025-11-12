Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BD0303A1E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762943394; cv=none; b=gwGEKb3gCuhceasZabf6b2lXpio0j8fbzlqs7KAjGMeg+B5o0eTQ6gN7+H0a4z9r2Ax5MyhPHp5cQevCAWq3eLdaGes1Jx5yLhSCl7UlybgYeDbsGVpKdmY1sZ2S0bWfVVUFvMfVQwx0Up+cvKYX3XJLXiQnGFMMda8LRpt/zDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762943394; c=relaxed/simple;
	bh=TbrWVnHe43jVBEREXN8QUw0TWAWKQPAYCVSYi/AoJI8=;
	h=To:Subject:From:Message-Id:Date; b=F0m0nRb8nzdk+wr/4t18t6woHDfQwBTmWSiWY161mmNef66TFqNA/d7CBjiTGuaD2yrks2yoP0FSQ7rbGWYRvtfYHa0BWvRWnoH+FI3cH1AXYVF3J3csTSnU1SupxsP0Iad7f1UQJfJk4eCpKOgnChkh/AoLVzbjJ4MDpEE8oSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjPSk14v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjPSk14v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9EBC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762943393;
	bh=TbrWVnHe43jVBEREXN8QUw0TWAWKQPAYCVSYi/AoJI8=;
	h=To:Subject:From:Date:From;
	b=OjPSk14vJQFsJP41qzigRkY2XBE4NH+h49qIdoM2LJrLKy6kCzOgpZ+F83XKhYRcv
	 ywF4A5jzczZkK5y68YHuR2aWrbNDZ2bID+M5qXvGlktDVhvB23c3L1kD5FiaebmCa9
	 ysWRJNckUOdCQ00OJC8fBIodYpKpyqhq1r+u0Ldf4GEatVhKC8rhEPJyI5lHqbrcg+
	 IodLhKrg8uoQvcG3dYLs2701SbAzlYBD+e3tDruPSJuZE0AI24WjNrEAe9Q1YR5PTH
	 l1cQ89Q1JXGbiEoe3bt/7Rj8X5NO6aQl8c+Tm1O5N1DfoAf+WmgIjuw1Nrde0oG3C5
	 TGXwrKoyfuxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E8CCFA1E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294339358.1724.1509750489633243183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a775551075362bcdf76496f8113cea4a693e599a967bb189a1a16e46284aaabe
Date: Wed, 12 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762943393
