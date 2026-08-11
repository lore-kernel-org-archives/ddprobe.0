Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7001A3160
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786452034; cv=none; b=ZBO9sExdw7rmvsub8gsANFw3yY2tzm6iPHFWJe0+HcqQUdn/ud75gN8FwPNfar5+iz637/+6Mc6EIazeOmBDD5Ud7OYnqofw2t8KaEwaLLRlAUYtFBtmvALgEWgP3dDSBKdMZcsfXSGUo3xRj5x8ztmIwywFWp0YgYDmbUZ0P5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786452034; c=relaxed/simple;
	bh=wEeybRwk4XhqM5w1LcC86UW5uIGFPGe6tdzGwM1cnR0=;
	h=To:Subject:From:Message-Id:Date; b=uSznXgNqh1Nx/bggijT/Ppqf/5BiYnhM9uC+jDkGNN4zXGgOa9nCpuFxd1LBrMts3fa+LsEufHX+j/DvQlvsU/D39OuXbZ9gf/Vs1NnFpDEl/kvJTZwlbWA/RfUPrLYZIU+T2Gws3BsmclgaqQM3ddOZo4i3LGustvQB1k3Z9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEhX7VgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEhX7VgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD71C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786452033;
	bh=wEeybRwk4XhqM5w1LcC86UW5uIGFPGe6tdzGwM1cnR0=;
	h=To:Subject:From:Date:From;
	b=QEhX7VgQitYuFNtihjmeo8tG3ljINUr7fYImdZEwe6f/3xG+MvI7cwmcT3D8U0krn
	 fNuF38Uvgkt1hwIJn/8ZwKBXWk+UwoyzXaK3iHP9L6LZ6tD6+R30RHZsxadx5K63jS
	 f3NX2BkwmZ0F9bQg2oqsExtb9f/8v8Uz2b+DrRiWDElH/nGt4IH6g4kSV0fI9oCAij
	 mcftlbFGjZI1Mjnqw+X4tUVadpH5Gl40NTOYH3vfkmpkDXEc6f/BA4FXYqVUSN7XXb
	 MqR8J9pH1fE/LueOLnD86Cof0rrC+rcHLVCueLSriT+7YTUq9QtRexwfKSAtei/FZq
	 FfMuZtI1NI9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D6C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645203369.25789.4606965950593773639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85f921a531353bc342799bbb250ffca50a4a7d450a04be02d4b629c1d3772a9
Date: Tue, 11 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786452033
