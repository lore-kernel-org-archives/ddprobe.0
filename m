Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C906A2E8886
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752862793; cv=none; b=bSBY3YLzr8pvLtZOwxuIFFUbtBIES/RrZgt14liPbtNsliFVLv7gB2Ig2OTXLI77P7jB3WD7rj4J3d7zpkC4I44Kz/P6ER4vNhTkDU+zoWzTnMGQkSBQ+lKhO0J28JCxu9vqiyJMWJN2wCVsNRBy3rbk66sFNXO8gW7lNPiSwGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752862793; c=relaxed/simple;
	bh=kleq48zJCDr4u2IXO4nVVFDaBautxCfcHnvfPrsCCVk=;
	h=To:Subject:From:Message-Id:Date; b=gjCsnHyfrTmaSuY6qlvbohZJRvGCQfTs+qTsvWbh6wPzRcjsxLK9dMBVlwAod3G2arbM0w3juAe7T6VVdaT0D/HXo5H58XK6cvMBENWbjM8B+KNvWauMVnE+67HqQDKNjsqRR+EeWAFGYH9zkTvaMiPycA1DuPoaPtW8Vg9xeW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flBg/Xhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flBg/Xhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752862793;
	bh=kleq48zJCDr4u2IXO4nVVFDaBautxCfcHnvfPrsCCVk=;
	h=To:Subject:From:Date:From;
	b=flBg/XhywVd+etexoZiwJLHCemujN32+NOpI649/Tr54I1nWxIkNHDSTBN40Pfamm
	 1dVWnLfGzhPV/msUJKlr+Ri0flxlUe9p+TotndDC1FwapqGJHng39RqyHoLWW8j9Nn
	 AnOLR6Fu5KjeHCcQDeou9z1hLWrWJ+LnykXHMFmpnvJvC4/lG3zrhUKe+pEvW4BjOR
	 Dcs8FddWIZFMPq+8eZMqVoq3O9cMuJSUM1zVwHR5hpQnrG3QVpv2wjklZtPpe7S3D6
	 LqxOt1UyCboTIQZ4F5/o4r9rY1FnHvxdAkmkQ2IdJoyi4Jn5bypMRsML6sJaqE2Cbw
	 8ZZn0VXuUDaJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B96C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286279358.13213.12758742645910951756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b40abbbe19b059bec82a12527e528986a63dd99fd24e20a231f545c9964bc1f
Date: Fri, 18 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752862793
