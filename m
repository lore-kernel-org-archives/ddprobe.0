Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7BE1C1F2F
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740131334; cv=none; b=TuBRz4sAg3qEqRzR8OklRLs/u0jwOw4aQ4F36Yd2iikYcHWD6JmDDHzJ4gZsCG9EhwsJoM8R2YyuMyOQ4kvUCZRsBtC+UUAQETpbwnpCE7bpiNsTOGSE7PEf30/2alyPvZYMQvpbHu83hNV+r4JyoFqYcEKiFRrWOHfXCW8CvQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740131334; c=relaxed/simple;
	bh=G3VL3G3HOHSc+u9M2T7+czm463grf4yRsE7Trm33zjE=;
	h=To:Subject:From:Message-Id:Date; b=DXDe/3ziuuXccLGLJd0RYYg1QSd+2h8QiG9aR1KETGIQ12MBRrPTrgJTdr+xa/a0wzUez9aEAZQND9DfU5IXLU4i70TTcbgGq6De1VC1jmgxEkQ73ZWjAf04Jok8cDpb4EjNHA5DufdiJvcOdeHPa/vqBcDrpSoTQFIiBX78nRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfmyxUHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfmyxUHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740131333;
	bh=G3VL3G3HOHSc+u9M2T7+czm463grf4yRsE7Trm33zjE=;
	h=To:Subject:From:Date:From;
	b=NfmyxUHn3YT55RJRNlS0iTCW6i9GyJKfh9s44HGPTBsrTWZEY81L+6SitCkscFUyo
	 l5lKmzYOVouARQnfT0z7LD0F/wHmrqgjfXu4S/GIJ/CHar+QiyBlE7VfekxxB2WrGY
	 zJzIvllZwQnzkDPS8l2cisXxl/8IGJDDpqRHnWVI7PIOwpMaq5PEloDcNYYEz1jPbJ
	 zbNTqflbe6Onm/aGw/gEKuWfazJ8fA4SWIrNIkuvU4gQI9LBTRF25gya6HicMpGnhd
	 NTSpqQZL3Pb5v4Emy0ecgeoKlDjPsDhHP5nFAgMNyALS2Dm8zt8hhZ9hrELl/5ieLN
	 4TdcFPzfrYkqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95595C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013133360.6137.4795603172170599979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1523d4b497017a287597d30bf71925572a5612f7cab772ff2a00cef69bdabad6
Date: Fri, 21 Feb 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740131333
