Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454893D6CC8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776778054; cv=none; b=HJNm3XkXE9t00hIR4OtYqW76Xi4yMvOWO1NHDvj2TUfyw31lThstyPKBNM3YjyqlzXCxn0EcapRcpVziLFo++c6fkhAb8XN/docZ7+v+UZoG9PDIXpiRZldo5znRlk+XDrFD4+HwRqnvBgZZxSi27u+4j+eETV0aROITMKr/Kd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776778054; c=relaxed/simple;
	bh=dHVnGv+zPi2wWD87OdAdcHd4wdRCBYkGn11YRkhF9OY=;
	h=To:Subject:From:Message-Id:Date; b=agmnFv3AbDgTzbNPkB/SFW+EF6wUjDZ010sevlYTXelmxNwMpeTjnaItt1JHYcOa3/NGftCsRU7H7Fsc7xmWrpfQigIZs/gN7+lfGbjL5rvWcLJwoZEYW4nytIQIkp9k4Xgrf+pzj7kfWOdScLkO4wFpGM0qk67fw63hbD4sC5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV22SB5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV22SB5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA55C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776778053;
	bh=dHVnGv+zPi2wWD87OdAdcHd4wdRCBYkGn11YRkhF9OY=;
	h=To:Subject:From:Date:From;
	b=uV22SB5PqO2ef+PcjePcOUXYb6bRFQ9lbyE0X2swaoL0dJk4L4fb51d926o10dRF1
	 Rw73C+vm9Vfs+Ai6by6TNqgkPiTUp1gZeWX/e+XySo2K6KBgVSwkGFnfCiqAYTGjFz
	 Qm4ssVNyMkfoOuxg/iEnNi3z8OwBajLH1NRK69Qgc08GB4iw71TsB8rhFKWq1E6NwK
	 hgckaKaVQxvDDFOPRfM9plEnoofaqLz6q/hQ0rKU9oIx6doSfKUcHdap4y7xm9HFE8
	 vv5tBImEI28dCVQQeezkKWrrAZVjz1oyDemxWaPQtZ5g97W1s7+x2pNAyL8oxpFpDx
	 hvaPqY8DE1Blg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E31F8FA78
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677805368.16429.2655204867144099510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6811040f39fc090975e9035fa8cd858e570ecced4884dbac3afd689ebbcf1c4
Date: Tue, 21 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776778053
