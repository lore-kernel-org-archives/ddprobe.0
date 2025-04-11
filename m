Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F42980CF
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360795; cv=none; b=YiInyvZf2+qUF4dugYM7H2YcY9s6Nv4lXsORhopMqPfRkygsPFRYIKU4JPKxWMLF+t3WAraIhlEliUKy2U4BKAlBT3uAO25q+TAYnaao8UiDewCLiaWqGqn4X8EZQTM69o1cpm/qnol17mZxNRRgXh5VBv8IqOaGYZA2s/V5SwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360795; c=relaxed/simple;
	bh=z1zRyGdTIlw9RU0z/sbDoSsEppsFxAcPewG6qLI7Clg=;
	h=To:Subject:From:Message-Id:Date; b=e+WlVjFeDuvYHXW2OjTSJqqQyKvIBzl+yASvm4cOZ5NBHDeBs1LEc/fdbM5GMb8JIuxc2LVr62B8H3pdNPVOpdR8Ai706+iJEFIjlC2VtscJxHR+7yuTkoQvSXf9HrfYpFo/vRR59+apKfDR5F5u0XyDfJOB6ngyoviKTmzD7dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1KNcqwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1KNcqwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6D0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744360793;
	bh=z1zRyGdTIlw9RU0z/sbDoSsEppsFxAcPewG6qLI7Clg=;
	h=To:Subject:From:Date:From;
	b=b1KNcqwD7DOMqMQtmHOCL/DBfPlQRG1Nc/o1lju57D2k1uDckRiAiv44R0UwbDxXP
	 z3ovz4gEApFbdWUOE4tWHWZSqpO/yDpZiXQqKjYfvrHLNMDslhlbjg85kXPVDWaf7Z
	 od4nvB+hpBNT9dIXr2es++bLEppWv7FgprR9rXlQf3yC3mTWYTtyaHShUtY1JeY4L+
	 4uy+EIwIGTjagxGv0PODrD9Qo3DJGtA/zcdh2OKhFhJO2VA35LvgB4RGOfcoVWd4ti
	 dArcNCItslsEVqJkhVeQdX3Yp9XIoGx7d3M+8Jj3doSPrKrKzR7ETq+TyqcdDxqTPt
	 XEvWzm9T1qP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7EC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436079360.20450.14630015565453837076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ad0e72500784cc1487deddcbf2daf87680103de815fee2df880659de3f3dc7
Date: Fri, 11 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744360793
