Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511F472617
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779433954; cv=none; b=Kyl2Aq8/eiywFA4Eb8ExJv1YQPBY7ErVVMkTmvmc8JD+voeoJmI+rxgToKx/vl6NG1lHctr15Dq5ZYcH3qmjgZLdmRRPG0b1/FuP/BbU8j7UQlfXUa6jWMoXI/9NbX0Tg11rT3f2RMrix3tJ5vfGBk7SUWb0QCCAvUckHAR+Iz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779433954; c=relaxed/simple;
	bh=mn0sxn4+aSlaAAFpxuBNvXQ67JKFnGYiPf8Hhp5HFsA=;
	h=To:Subject:From:Message-Id:Date; b=uvniegO/dEc8CSdb3tjWH2RFczKeLKI5l4dr5ESInJmxk9KLW82Mq9nyspWbBLZZMnkO+EaT6j//fmI+ZOIXOTgBGHV1FT9qmvbs2JXTeXlRuhksSSIesIzNAdh8jkG3eRYFHYcuqpW78FMlFGVBLlFikVN9TvW+ADvBqQHWHe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEfhzA9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEfhzA9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3437C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779433953;
	bh=mn0sxn4+aSlaAAFpxuBNvXQ67JKFnGYiPf8Hhp5HFsA=;
	h=To:Subject:From:Date:From;
	b=hEfhzA9johCYNWaO+3FfF1uqV70NQqdD4+j9mtJF5U7bgDU3EpYR4dNFPUTOujFBt
	 i99z4IofNTFUn7YG35lJWmhCPHjGyHCwg2lrLzK3KZpSWYWf8NvnqIyTwFbHHoxIRZ
	 kVLDbYaQm3k+DYUZGB+hJnQrU63VTqJ8ic+kfhBLcSmF9g2ka+Vaaz+MwprVZOFd4F
	 /Djk4hleh79oQSHXzbe71ixdyrRQ9h4b99GMR6Hti8bJtrEIAn/gtFmqkAVZRtm6kT
	 XkVukYcCNtPFgbikGrmNVM04rZfGf0UdbdpfbOPjEHysSyGa/nER4pYMpW0F3fQoz1
	 qZkBXasp2zK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A65CD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943395368.1242.7007448797349725900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b283d4bcab9725da865a1f5badea747e9318fc4c28eefa494af4898f347688
Date: Fri, 22 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779433953
