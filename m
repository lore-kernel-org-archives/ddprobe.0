Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158DC38D007
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777399054; cv=none; b=m1LTrhWPmFvWRzYZvHfU5MOiNhKlJETQM1yzTJ5QbIHm+Lt1DHPS7Y4a/qDQOHw8pMnRVVqMbO41vCZe7crYYf6r5xEsVvKckFWWsQ4anac+jQ8vrBg0DFE72eXGfIiNuM892unx9mIR5iY/nGFb7ksmiaNqdaobzgUYoWRghZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777399054; c=relaxed/simple;
	bh=ny8BJVzEN9hyIyW08DGN+IILEmJrSdM0vJI3vj7Fh9I=;
	h=To:Subject:From:Message-Id:Date; b=K0pEo9iirBx29X1PvGXlSIYxb9PbVuirAn7axs9h/u5UsnS3LL+I5M7abvieGA9BA2jPvULZN8WCkpa8otmDVUlCp6mWbV6PBqLtxipyBsPoOcKatgFpYEQv5xsobsg2E+mFL408V5VR/lClrAfoMlvxdyQZmRM5avhVW235Pm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpLIuGnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpLIuGnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE554C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777399053;
	bh=ny8BJVzEN9hyIyW08DGN+IILEmJrSdM0vJI3vj7Fh9I=;
	h=To:Subject:From:Date:From;
	b=UpLIuGnMeddC8MW0+fBajvJPlZ0J0x+7iFSuyVpYLXNbJr9k6NXNaBD9jTlFmFnIu
	 ygVH1L5N/52MxBfVkePw+jGK3b8sPMIsqD6rNjGTR2imsEoIcAdMaXhV+h89LuiSHR
	 /66ps/w+zd2K+MpJlLTpaAXFeDMiEX14N4we2uWUxKXlsPfIhkNj166DPKCVr6dv0K
	 GCNjYIFn7d7Eo79w6BFKocKrcBeIrs73o3XPAJKsQsrZxiRbQAkB5K6GC4z26J5Izn
	 qeaPEJkab5M9Z7rMP+cRN8+oGxneHuThNdlRGa3R7P0HT78AogMmwcpu4b7NUh9Vlf
	 kP4Q/HMLsg1Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC46FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739905368.19572.15748400483271292801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1be98eb4a4ba466881d54e19b0dcd04f5dff9df7edd1a840c00407bcbcfa7d
Date: Tue, 28 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777399053
