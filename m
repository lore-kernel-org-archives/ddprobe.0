Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8B02045B7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744830595; cv=none; b=AI/jqxkCUnh2OY2hXUzvjc6/FM0ufFue/W0x4VyxnvFDyaMveKAcKkv/4isp6hzOLwCjlSdDrhcERcoqU2i9UvAEtsKBndj7O+7kGpP8LaK/vlYvfsr11OKg01TAKUsramhLD4hDcUbZtpn2vKrVWxnHVcQeX52cuJII3Nbk+NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744830595; c=relaxed/simple;
	bh=9vN00+CpmbT0poZa85QQwuXSF6q3RNvmKX8cgHCZqvE=;
	h=To:Subject:From:Message-Id:Date; b=ihx7QIxGw5LAI8lHGsj87zQnVmHZG3XFfwA0O4/q3QdMmypG/0LGBCfPFTtKVQ7e5dfPVfDc8Nd9R5ajai1VeUbQxtn7Rf5VcqfcNkB40qHHM32N2mBbJlNWJneha+YtRpomeR/HtwjgolkH+wkQmumdtZ8lUiBuuFGGcmIrqgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTApXETM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTApXETM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5B9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744830593;
	bh=9vN00+CpmbT0poZa85QQwuXSF6q3RNvmKX8cgHCZqvE=;
	h=To:Subject:From:Date:From;
	b=QTApXETM3+xvWtV8JwVJiyvnOIT+LAy3CAe45Nay7SARxPmBHPqNFRqeAOQ1V9woA
	 nnNG37q7QSb5jJOmpLWRtmk8ao9TWSwYIRoFUaG3v3GSxe+YmFOxDWhk0kVkPpmz+C
	 88KdgAGXW8ptwIUYce0Bmbiqgwl2Fb8cqwqRgpzgkuhbrkPRXl935GPHMvAQABkbwN
	 I0M4xhYwoOyaDR3KfBl4yPKY57sRonrzqcMQj+BT2wu9JTH1UtmYk+zpE9i52CCvJg
	 EpTZ4ITyeN8HF4XoYGRt5nKbxz/S3GqwOOAd+qfHRlJVaZPU20/0fktdA3OLLSSMef
	 O3cUXhVmMlVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28F8C369C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483059364.29431.10186439600311842601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcee37becfe82bedddd063a3f9f462dc43120389b072a793e7e6dde1c351d893
Date: Wed, 16 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744830593
