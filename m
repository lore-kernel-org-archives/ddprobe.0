Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C90E13C820
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723678554; cv=none; b=PhDYdWeB/khvQizt4Ti1g9kXCDXoKLjR40vG0bT0bUfVI9M+rYkGvJSkk9t6QOF0dV3kV43gJWpeO8eFUL4+8w4HHaNg717OVX+WItbfrowh7rSNRFt4PcGvZV1kk9orPEtikcAbNYfKERpVPxKtSzEA53iVbaYdItaBSNhtOgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723678554; c=relaxed/simple;
	bh=ya6aOJAoaIrPxKr4+j36Z1rUT9fv8eECkwieOC7tPPc=;
	h=To:Subject:From:Message-Id:Date; b=iyzoVTaDuP0jZaZtFQD8VEpJiEqb6illo1ZryP38DzSXRfqp459r4ODrHJzdkZ6ycLR7zEz7erqrOS9b56iAFXzLrJ4ZW7MeH2/6eBYnAaZ5rFMtAzWj2CkE/sCPj6s6VTwSmoVB7itzlHaMmgBwMmJmf/rJPkytlNuwvMwfyJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maaqVsO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maaqVsO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAD9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723678553;
	bh=ya6aOJAoaIrPxKr4+j36Z1rUT9fv8eECkwieOC7tPPc=;
	h=To:Subject:From:Date:From;
	b=maaqVsO4jeJxt6z9JF1txix6xeNuxMSe2yl2vIwh9iTFnLl9pwil9eWeKEKpESpCE
	 8NIpE3iIctFQc2KcpSrBuTGNY0AKEWbbSwC5X2bJf/d3+yelEy7OIyEtpyOu2p0DaD
	 FEgbwQnrji1SV8VClCU+hwbj5zx/udA8ftpRLCSMU1f9SJDDlcdDoCTIz90P7L+XFA
	 oqASg4XFuD9YrOJPV/t8SASFvEAzQs0Yuh/8gzKLuEDDCBs/GGU5xmqAZVnjzsbuKp
	 omIvc2aTUcfP3339Id7SWQv2JoWTLmQOjx14K1oaVpU6u4bTvkKLndHtiq+kVFiOmz
	 i+hBWzin+96Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E2C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367855358.9558.8658617299602795491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b96677ba3b42343ca143ba77c943b3b8ce6861306e3e19fa24295ba0dedfd6
Date: Wed, 14 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723678553
