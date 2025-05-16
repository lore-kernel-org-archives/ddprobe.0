Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DCF27877B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747421995; cv=none; b=KSUav+Xnlljd7K7tq6KB0HGwO2p/wR01WCAqfy/7VMzCak8igOu3PgksXaxg4Ckx7a257nVM9zJAijOMdTIzI4P2Ywf9vsZF0pZWxjyLKC0QOxX03VD/TdJ5s7lwcYSegaJMkbmd+NW0zFm+u/wrr4Rcro2AfagLtheRqSmFqJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747421995; c=relaxed/simple;
	bh=RAvMqYE8wcVG7zOmQYxLUY3hf0HDRDgPoi7EcUNlXpo=;
	h=To:Subject:From:Message-Id:Date; b=Irx6Gwvn9QvK9n/w/LhVU/6oJA6jFp6P8cY3pWGOoTk69AlWNXavFy+qt9YMnnari0TQFbfKjMnCI9sHVVv3ihw1VpjyTHqWU//pJCxvuw3YT0sMNixS35mn7NC2l05/imYfnUHeYy5EsvIVo5zebC4q30aU6VOZXyCUCffNVQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlV1M7RX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlV1M7RX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9B4C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747421993;
	bh=RAvMqYE8wcVG7zOmQYxLUY3hf0HDRDgPoi7EcUNlXpo=;
	h=To:Subject:From:Date:From;
	b=dlV1M7RXyAK2vNHjerRY3mwA/repaL+xxHoEm5+PJDRmIyGPbM2/fvqWUyc47lIrz
	 t7c/4Dnh+I50N0V4kLKgCUc3d8b8Y8MpHshgleKT5VLYUffHvVPGSENnTvT4EPLkN5
	 Ared68M32Y0ZIrto/O6wiepEeLUlrK/x52ty27yT0b92wg3BNGzRcRW0Y/5MYLqJ8A
	 TAHlGp3SX3qNAAELCpBUrBUAf2A88fUHlkS3X2d8QBytJ/U+yJrxiqtFqDacZpJMKw
	 fPvUmdnuRA2lc6/l//sBGIcL8COT1Tptn01ZtpFjaWaRhDvo/9+KyMiS6j8OgZmx43
	 3TFiq9eYptteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD48C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742199358.13070.16175322974816278401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6979e07a4be528b77e827b473cc7ecd60c7b51dadc9c9ae41a03badb5ec933
Date: Fri, 16 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747421993
