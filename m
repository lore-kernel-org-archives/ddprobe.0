Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6050028F4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749271794; cv=none; b=YPCx+nxVFEqM2piSOCgyKrDop4aHjLyOx7A1aWS10WNazusFkJHnNF47J92uLVbFlg/Hpwb3mhOFWx5gUAr6bZ6GAfXmwZVnjm4V2gfdDsMnFAR2clFmJWw9rxcm7ianOhKEzLRcwJnM9IYQWHqlVpMp/mYbrjZtejZQuceflWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749271794; c=relaxed/simple;
	bh=0D9lo3HUU+qNQsk4JSbLZSdYKjTR5Wz5BY0H9x5DlwU=;
	h=To:Subject:From:Message-Id:Date; b=M70aHGTUqPFyJOLZoSQpFDhEHJ9U+W5zT1dF16vEBAKXTG8oB8aH4Hj9RmENJqOYUuuF2qb/XypmqeVVaTWV1n+dyxzBCwcts5mKCO+YROZaPNGlo/4jKGXH7DLk23dGjT4kcADoFWN+LHcpTyHgVcSiiz0SqTAyqjjLYqh1Ne0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCMlPh1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCMlPh1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C09C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749271793;
	bh=0D9lo3HUU+qNQsk4JSbLZSdYKjTR5Wz5BY0H9x5DlwU=;
	h=To:Subject:From:Date:From;
	b=JCMlPh1UsG03rX0vX+ugQkjEhytIbxPDmSScslek8VzdRkIs4JPx5DAkJnlSkXR9R
	 sTxT5n+FyL098veq8twIZBIkmUbd2Osi3gyYKSVJds8PT5B04EWrIWC9trutNTyXFl
	 9RvPn+jK0j8SPLXvUM6eTtgCrMbAsF5Rn42WqeAgAWYtYHUy0jfYos+FPuvjXssKSF
	 MXitB9h2BT0sqs6dMeIwtKXPf2eDbPUkx7aXZJth/GYk3aeXtkPw6y7k8XvHGghKYW
	 rEGCdoCliJ4dwph+ezgVxXVJcezCs2IIMzI+oHRy+Aw0GdE0C7JdGDpmt3yDunrgE/
	 D8+NHtyUMiX2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F6C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927179357.9701.11954128980782614259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e729970992be62860b5522c3e0868d1cdfec700585bbd4b8024d024b84d96cd7
Date: Sat, 07 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749271793
