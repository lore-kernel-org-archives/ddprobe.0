Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303C227454
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752421794; cv=none; b=WAfEf5Pf+NfI2Ql6hzvuN7jMMDZ2eZcpvtHkVP7tarQvGA7g7+2BNS547Cd+yYqV+8SZ9DuRkyzApkB/dzt93+NGI7H2Sgu1M5zL172sNXPX4i8tkU9kNe3AbmnfFDMoGXOgNp+w9hjRIOlh2VuO9th4blMI2k/3oGKS8AlUnGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752421794; c=relaxed/simple;
	bh=qR8OiTES6FgcHVUOkUFkU2gB3a9A55EHtsOCqXuX2ts=;
	h=To:Subject:From:Message-Id:Date; b=QhN38kjPJneNBrEzaiVuyGF8iokMkaAa0wGIIXgoIZZEW+ODpdoOcpyZgJAbpx5AxSgone0oemKFjkL2L8pYQXHaR1oRsRVXJjxuk3J4zor5OsiLCT9+XuDShkpWtdIyN3xohk/+P9S6qHcBLNajoh6rk1I2Jsc4aZ/5WPszhIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVCHNtHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVCHNtHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA71C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752421793;
	bh=qR8OiTES6FgcHVUOkUFkU2gB3a9A55EHtsOCqXuX2ts=;
	h=To:Subject:From:Date:From;
	b=AVCHNtHaUl4fGpvz+M4xNbu4Rw+zK2oJD/EoRw9leJvv0J6GrKbJYsZMlJ80RI34Y
	 jy1DCQWLK2BxjQnhIst/vPZ6N9RLtLvFGpAlFHWR3EUdopD0CU/EtSq/bXdAVcwj2s
	 OTcSzQXSK76zVkwvJZmEl0RhWedd/cSO/z/DC2VX0wYCWz986khoUJRA/fwIWr3Lei
	 zeYHAisSzHvbJZ393KnVes91hfLt8ieUPqN3Tig/Yej/njcTEDWkw4618FmebR4+NB
	 28dh7CjHh97ogAq/IYW0njKspc/ax5gD/KHs7WT2U6vq6eUdJeC471G6lNxNsgrcKs
	 VPl6Nm+mwrneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7BEC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242179357.12211.4549282073918249862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8448eb543273f9415863faf174b9c29df6fa06b8ad0b3c26d80ef03c87f61ecf
Date: Sun, 13 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752421793
