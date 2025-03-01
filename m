Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572861B4259
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740850734; cv=none; b=LBmBP7Qys/uwamREv6oJnKl1nqztHup5U2SXM2jKaHpS0Yp6UDjQUSDD3XU4WeaBOUq1uZRcb+X/wDJxS/60I7UBSZHGRz1RMZZn19ZpYkI8uhfzLGOFMaJ13yirnvxk226UegTFlGa8Oz//L3VQFLVPovbk31Z60iO2Lnwt7is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740850734; c=relaxed/simple;
	bh=RbLMqnkYgNIZjsY60dtYHdJl4aJDeKdOmbgSB8UPJ5g=;
	h=To:Subject:From:Message-Id:Date; b=jf+gkodmps8lhaksn90RfRFf1jNS8hyJDjRCn739sUuFPlbK06BbFqKA4wY4ys+ond24ArOuWeDt7CJpGiDRuTtsuYDc9mONsbvDZspu87RcRjVpN3mTqJtuBw/4OSYeRSSljmQXo52Yu4knTlEu7c0CDjdGBKjuEkyDfGbxDRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq44gWEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq44gWEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B52C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740850733;
	bh=RbLMqnkYgNIZjsY60dtYHdJl4aJDeKdOmbgSB8UPJ5g=;
	h=To:Subject:From:Date:From;
	b=Bq44gWEZjmCIpvQRjygQvnO2PdPPsmRGRjkZu5KKwQYFaYThcYOg4teXAhh9rqiQC
	 +8O/JgcsfxbY6GT7lomeAIwJ5RbKulHcgAzx+SMGPqb8ViA05KpCQliCyrJkLj/GRs
	 LVXlF8/q8nJpdHsz6Vq6bQc3ZE41oKQ/iMnVZzY+M9Daxao8WgJz6zr3d0yfFQCQDE
	 l8q8DIHnBRUO7pQDu+e8tGP04mOd2cQUJAqZ3IvR3l63MtSO4/QKwcC/lBDU5RQYlg
	 tbkTfCDCY53ic6bdYU//rzuZLX45+RboG6ogTOdUhp/CEAbg0uhCuYDLd83oA6B8+y
	 jQ6oUuO/RgGfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D9C282D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085073358.20248.15844983552852582755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa548ddffe2f24de73a8774285ab24bb74f3d0759eeba9de5ae32db569c1373f
Date: Sat, 01 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740850733
