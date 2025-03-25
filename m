Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420E1823DE
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742924994; cv=none; b=JIByeBckIj2zXJgW2RNm1NW2yl8HIdg4qiCshIG7ozbTlfSXb9lHkCqYmcI8jX+KSDc0jPTzZdEDRQLlUfVJBCPbLApN9eA01XZ8fBoOWi5aWHTcCHCLN90s1ui8hTKICiOoOOUDdJAftJhjwlVZaQNwho1v8zdgyN16QOy61sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742924994; c=relaxed/simple;
	bh=VfXCSaQrrrujENg/CMgY6EyEPxp8YJzuTFTJokyg9RY=;
	h=To:Subject:From:Message-Id:Date; b=tdUELzTNr4Zi0EhvUx9LAwYIkqUsqxdxNDQVCtMoDD03/8edu9SHwAUHGNLe0iSC9l0Un9Iqnq3f1YBf1bEQtHGnuq/lPxtuQ3jVB44G0y6HB3etIcE2q4iXX9UhYsavCEJEu3Ef4wVqdoB71LP6PaQn9jRsTCOOEj1QWgw083I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc2z3W5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qc2z3W5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB92C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742924993;
	bh=VfXCSaQrrrujENg/CMgY6EyEPxp8YJzuTFTJokyg9RY=;
	h=To:Subject:From:Date:From;
	b=Qc2z3W5zj9Zi1mKoBCxFcP7UV7kJta65qI9LmYm0p7g7yvzbvZWqKPE02hXdA08/o
	 WA7TgMq5cfCiH0t/HWmzN+7twyWxVEDxg9+7NHUgnxoIUW8V0QT7Ihsq7AM/bDsMC0
	 o/6pD9n5+Vd+TSjLHjoSD5yasa20G6hzPtK2tF3SB0qLY9VaVf/rt/a7GR+koDaiNy
	 QlPqcVZgTYhE9RT4ShgVrGuAkVPjG0GATqUYqDTx5fUW9tt+h7C4foHoW+/MrJzANY
	 uFJhpa8aK80Wrwvsvh0z7tTuWEBHD4Ybnh0pxTGxaBY+6DkeZS3jmewfWTbXOsu+JX
	 KMzvZsakC0vhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CAFC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292499361.4349.18038400943928110990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d207a37289144f6a44aa4afaf015bf8ad35accc5e2f31b91193c3129ef131e07
Date: Tue, 25 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742924993
