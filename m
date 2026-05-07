Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E12530595B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778141254; cv=none; b=d6OKHQzERhlzsDGp40GMGZlrBj5OyDNNeOKjzU+kO0fP/WeMJJyEoVDR5xSyjDDXtg7X/qQymjgMkuKBMienSIqsEtYwEIkGGI+IV1GwwSJ8lnYJPTKe24kOs2utXNGP7ie6q5/7NHTPltAagR7QDQl/+IzRrKuku/DkmIh/5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778141254; c=relaxed/simple;
	bh=6DTFF5XDTq8V9VEXLOULEtHLQmXriOsYPHsq3YfTMzM=;
	h=To:Subject:From:Message-Id:Date; b=TUxmyx+SOjPjYFXFEGhVS+lV95MvQdet8xiChdWrplFcufcxA/ML66zdXN+lp2dUenK03R9yWppEre9ca7tM/Z4/kVqcMi0tKUMCgOHxWKulhP0WNO5EPdV8Z6M8DdfLh0MiWePWK4mH/NkEmvTlVBD3pfh1RrpeCjuzSnufBME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGM3wm7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGM3wm7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B961BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778141253;
	bh=6DTFF5XDTq8V9VEXLOULEtHLQmXriOsYPHsq3YfTMzM=;
	h=To:Subject:From:Date:From;
	b=oGM3wm7CxwAE9d36DLqWj2U2GvwuUabsKf10GZR6Vo5IpJvWQzwkRc9cvDV/hgpeR
	 gry9o60P/G6VDXTeDW30n203LpTuCgdUqDv1C4DBWU6WxLQIva7r5RknKh71AohsMV
	 Txkrmgew8BV9vw/2FIGZn9uAL3PtTJiV66cggQCAkKNXeWYtONRz09iDpvwKu/OWDu
	 mP3dKaiWIMUUS/fYGuGW9655ax/gKONjL0VcMmXbD8QzO8Z4bmApgRsCTILCmjEbfS
	 CjkMHmlpGzhR5DcOWb1MDYvyHM1EfgyJeOTRwXADOkml3qi9pS2BaSvcMqBLa3VGsE
	 2jnWWfTcAJIbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7ACCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814125369.1048.17772635856980058214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb782ae52c3ca7e626f7bc66def831807464fa568a3526c4206745bf0e239580
Date: Thu, 07 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778141253
