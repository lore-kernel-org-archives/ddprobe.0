Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC08228CB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776548854; cv=none; b=rZaF9a3cSAkVL79no6ZN+N3GMW0Qnb4+9KahO0vGu1oMZ0qyGhUQr3Z7tZcH3j4gO505JoxgK84ZurgRxR4O8En2p9UwPN0avriA8cDQG4nYhmBBVuXyTs8QphB56uCg1LGv8HdQ4+/bZpXh30RGdTkfs66dAAuHw1o2PMUWU70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776548854; c=relaxed/simple;
	bh=hF1w6jhq7Oxbqxm2yYohJQ6XP7Z23uhCUwahCMJL5P4=;
	h=To:Subject:From:Message-Id:Date; b=td33RMddqrB5JXoOKm6oXYwM/pw0W5+f3iMeDCTCUsieqDhITHn1psCwC+IM+Flik/bdJtJ+c0900pqCmeQyFWj3cPU0ZCRLJeqhnMuaGkfRciYDuW6qXWFWvXusZyH2BuObEYpOlRnnttBroSuAa5zEjQEBu0I7RvfqOtThz3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phJE7QPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phJE7QPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CFDC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776548853;
	bh=hF1w6jhq7Oxbqxm2yYohJQ6XP7Z23uhCUwahCMJL5P4=;
	h=To:Subject:From:Date:From;
	b=phJE7QPsAiL2iDjkzp/i0QDKb3zs7MTcL1tQKH4MKDSjhHo16i5XTDqWfIQ4eRznS
	 TiwXBMUUiNKvY/54Thf6zNDZtaBXjubcFqkv3nNpmlQRc9+W27w5pIiSlnw9UNrqXa
	 qYktB/sVv/QNDNiHpp4XeaV1mn5a2NL7Kh6NvJy4FRmBAw0GcuVi3gtP+8b47VQsAZ
	 8omKJlCPnlrOKmlyrmV0y5xI6+VMYAbTPNfLDWzA8VIO34oWro+tVBVxc0gxT/Qzmf
	 yJxCw66GigtDk8312Ad4QyH/vK2Ts9UMMnBCJzXn0A2okrwcpxPpkhfSgLGkvTD9tR
	 GvizU+qEfnA/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD74CF99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654885368.21265.17484551498569136831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9e8149178725006744fff50fbf80b5fbfe73469f69c086e43b21554513835d
Date: Sat, 18 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776548853
