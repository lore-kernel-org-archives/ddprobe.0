Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16734375F78
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773299694; cv=none; b=f1QAMqB+n5GXfkVTxB3gQG/5UxC2n31orYAUvma+PjrGHerNwkNbm9UmckPETC5I9qkVMzoH59QHE4HHEhSW3E576oTuQe0V4UzVzAjxlxTz6mUb5AB2UObd7FBtsy7T9l4QSy96fP/a4bSd7bPgJk2dZyxFQUwvHePNW62LK4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773299694; c=relaxed/simple;
	bh=O7JsvCkb8S7Wr40ffju3HqZhBXFDKR1+lA2qIBDRekM=;
	h=To:Subject:From:Message-Id:Date; b=Su2aeLsPdL8T9TfIwfCixsmdec+SgzLZnmNGimJp0eAyO5lpT/kjYtwwBUmFqswJxvbFfPZDm/4SK+HJzLV2lZipHcoE5W297fTPSuFv5sencLG3CnhX5Zdiiztt9LASvB6atPXqTaYCJRrfNG3o+fwdUteZCTN8wB81M/72pw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOm37qZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOm37qZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC26C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773299693;
	bh=O7JsvCkb8S7Wr40ffju3HqZhBXFDKR1+lA2qIBDRekM=;
	h=To:Subject:From:Date:From;
	b=fOm37qZ9gYC94AIZLjg7dkHxE1xdm2M0xFaWGW8vMHeyMvpW3eUHy5uSa8DxcFJ7c
	 e2O/+kqZB0A2vEEJLBNR7wlaUxvtIREFWz+Ek8mW1Mb5h045k3zikOyvbI0sKRKBxm
	 QJJ5L0bGPnled2PqrByIMT3ldGnWXebVbujw4USRmwn8+Ttp/Juw+hTK8Dir4UQjt7
	 A1Agrr0TccyVt1q2uyLIDN98d0SzCCzhEQ+IojG6mhGw2r1zApTJP97oDSQxjRaRE3
	 mST+ydY3/nVPgCjat0UyzjnZUVwceSByRlXgLEwU0d6/h1AQhv5Mx+pkWTa4varo9s
	 8aqCkeN6Kt9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F670FED2DE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329969357.26759.9170697714843663270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d546d23ef4bf799018b10f068ce992a2caf4945aa23386d113c12c52eca283
Date: Thu, 12 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773299693
