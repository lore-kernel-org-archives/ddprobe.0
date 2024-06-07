Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9721CABF
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717791443; cv=none; b=LR3ouPtKWB60EBsfqQ5ttXDQHjSWrXu39Tm8Lvw5VELvZVD4fSmSB5pobSZO00SVilYcr12snq50GYATYWn3WfvyIu+d4yKGL/lStqueHKyZtMDWiuQI5pHruvlq747Ry+WneZPKMtmi21p6NRF3FrM0+qYdEe8cmr51uo/f4nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717791443; c=relaxed/simple;
	bh=6661XNnYkWyabCIcAGxbXYg/uh961DPmrtp6SiF38Pg=;
	h=To:Subject:From:Message-Id:Date; b=AqqrzqF4SJBO2hJE7okCqsDpjhP/UVnQHLvMb8AobxZNp96l4HMFmWnLW0zh4Xk1i5BrmtYjzdYlcMxVG/GJJji2AYZnSWlfYvMTINp2dYvkjM7sUJvPd7zN2WU/hDWbCeYtvKyy5iE09U2mrXkQAf7gzlrQOFAk+TnMR7IKRsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV6FlUYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV6FlUYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F8AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717791442;
	bh=6661XNnYkWyabCIcAGxbXYg/uh961DPmrtp6SiF38Pg=;
	h=To:Subject:From:Date:From;
	b=mV6FlUYx3QGEiUWsUHt6JPO/EH32Q+PcqXr6BKchb2Ojn64iMDYMznUUPY94YXY0n
	 Ui67fG7/5rL9t1gj0N79S7c+soRf7wwSK7GyXU97akK6ohpaYUbApM8q6J+sZkjCOF
	 sTNL23BwlDIUmTt+JrPnxdL6/7ogczEt+0Fm2Tatncd8gTixBxHN5m13oH8feM3xEq
	 giahDyFXdUF1Ew5NI2eZ1RirIrjZVWTs6Tgb7hbz5YHlpOMpBBaFFKH7iA9T7vZiP/
	 W8FiW/af965cbErQ58P9YEgxZhXEBCmEzszTtE6qpx7t3I9gW7o4UYSRzLY10GrEpV
	 GW+TyeJEiV8ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD766C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779144276.32677.10072627869882238013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ca96e6260aa45ef3425912a774c7f371316e1668a772d27913132c603a843a
Date: Fri, 07 Jun 2024 20:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717791442
