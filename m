Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4AD1B4141
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745516394; cv=none; b=oyYyuhe3lNX/+sWdE4vOyTixot4k37PeNcQVRFEk0x1xNANbsz/VcptIxCKJTBUComVtpMeCy2PAnbOnBdXiTRGwAvx9+zvgbjZpWf/T0yjYXpCEhdyUqZyW8SZ4CK3VjRWq8J04Cl1fFw30pGJc0+HQsddDyaTUaTdH5hkg9cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745516394; c=relaxed/simple;
	bh=TncRmF6DQcH+G4F3qHG+pf7S11a5Dg0v4IDjkDq26lc=;
	h=To:Subject:From:Message-Id:Date; b=M/7HsupjP0bMFmEgEue/850zRU6HBf9RPnZckSqUCCRs6brypbn8tDl1fbkKwPClIMP+6OBMxBHQRGOJvrwPbSQzlvX3qTEe7Ipav6elISFtXl98OGmgYMltfc/r/8YVcvAmnVAgAxT7wgM5gs5KFXhk+O1zq6yKqGr8Ug4kkFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ucynx2ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ucynx2ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745516393;
	bh=TncRmF6DQcH+G4F3qHG+pf7S11a5Dg0v4IDjkDq26lc=;
	h=To:Subject:From:Date:From;
	b=Ucynx2ws1lo2ivAsGcYEny3MFPyIZ9oC2k7tVaxThzSsA2LJaOwqKPo7IRlYukE82
	 Q5hvZ2Wnu6buDu+3w4rV4rIRoyN+Mpr5y6N+VcKEXtRF6I2Ms9i4ECGwgWvirTXQk2
	 8yE67YfnnR65rAI+jfW+bL6LDxhjT0ufRSU70CWmQqrnaIsMsipow/8d7aGGv/KWuF
	 lE8bn2cpcnZBkqG1m6/jjLw/EEUKovmNaORc/Q7Vg3E0LQnxuXCibQChKzG2gvKOx/
	 aU4mopHAY58uCXo+Kwc2ug6RxoZTDCbOAcxfZftsT7Q8e7Rl/CKE050wdZmWJC4v3W
	 6vYqeI4ld9phg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB89C369C2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551639357.12820.4733335953714925835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c5b169588364f508ee107e5f4f9446d44e941f24baa4b8bca29fe22bcffa6d
Date: Thu, 24 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745516393
