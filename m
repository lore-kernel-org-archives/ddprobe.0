Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6AA2C15AB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764353574; cv=none; b=ZLIlvcCYCnulYO4b/Hbh+a2BX0xtDzj2Xf0P0xYZvf8ZW9H9ZD6SSx1/C34o/YCzHPJASnPlrm8rUGD0lo+B1WxL6rue5JY6KTLueugIKrA8tXuw9hEhoEuHUU85Bsgek0WW8Fuvdmev/A6g5Pqm77xFtuCXKeDp0ns7jzWbflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764353574; c=relaxed/simple;
	bh=7C4uVDTb50d4AJggLPkqyhZqKHEmHkac8lk3V9g9n1E=;
	h=To:Subject:From:Message-Id:Date; b=UWOJ8w8ijeVFJoclRl8Gx4h9NTAAdn69Ykr9I7xOZChATYdhJCvQaY12luYS2B5cfOXx2WAyK7/fnXwOiIrIn7DRYG9+qY1vPDEPzff7LtVp+IdsKcqUy1foETrTbKdkTh5gAnhmAHJyvxRDQt1fzpR9km6UcRyOx7b3C9UkO0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5kxPzX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5kxPzX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A2AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764353573;
	bh=7C4uVDTb50d4AJggLPkqyhZqKHEmHkac8lk3V9g9n1E=;
	h=To:Subject:From:Date:From;
	b=I5kxPzX89klrBJYAURZfhMw7MDNBpOUqu9ODQsM4y0woMgQ0aDbmqEuwcIkYl25te
	 Tigq3bT/hk14Ah4oP7H2bviDgWTaw2RRGYMScYBzmTfPgE5qtvaQ1IYxqp74PTEBv8
	 ngJsVY+CDUTFn6XussgSuj+iFbUYrjSCy2aA/5TkjxlFlK5vAcC6bmwVZu8nzve0DW
	 0mXp0g/WNoNLm05RhRvy0tEeuX2BYXMnoT9ZCH9Mdani1oyIXilNE7lugQoJRMR1DX
	 5Js6vtjBDnmZgj99kCLUpT/tW/eXwSghmufYCWb6SKExt8+fVDiYfEgCoXx9+whJO+
	 rGfRK2lE+cfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC8D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435357358.7345.69563851239033982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84e35bbb217da3202adca83e673567e57829cfba0c01a5c3747ccdbc43a8485
Date: Fri, 28 Nov 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764353573
