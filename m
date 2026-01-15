Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0403BA945
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768455834; cv=none; b=lZUGFt5czEErWxGtX/d6chAPCQv2in8QYvQ2fMDa4wctjdGZ+GRZwG4G1mj+g9vomTDAsZh4ooJkRxTEf5MnxYfJBiDacgWLDUW8bd3XvqbZoHRl9heRDA9th6Qx8j8VIrms/fKUlX43KPAf1TFjUHSK5KJeH/JTJzvZOHpLddE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768455834; c=relaxed/simple;
	bh=SOyxwrfwf2A2OtwcXabc+jpDr+2nw1+kIDJXM62SSzY=;
	h=To:Subject:From:Message-Id:Date; b=P/cZSJcll7Vtz7QSPXxaO9EI7ZhPTkECVx+SmtHq5LPm6Sppgf7NsF4r9T9TKRIujA0uAUQNcNuwOvUZ1GZiLGuK0BdxYWncfpgX83IQ8LazfPXBIT8+zAVF4imerK8Nu0WXmTjp1NYys48ngy5bpbbhBZR8SZc1rZt6IcgvQuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOzRfGoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOzRfGoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF3CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768455833;
	bh=SOyxwrfwf2A2OtwcXabc+jpDr+2nw1+kIDJXM62SSzY=;
	h=To:Subject:From:Date:From;
	b=dOzRfGoX4xQzn4kRgGBIHItR8kK9ftMaFAk+Mi/+bJ6agor0O7yi6D6CYvzZRwnrx
	 yx99sNO0tH45wQoqaIEBviS/OrWqCDEfPKbuFmVpz1TddHeAAYN4aQFMQW2sD3TUB9
	 Y0p2VIyWs17mvGZ7PDFpRkl1c7VXHHi9mB6A+w6PYspp5Pj2XpCHsBKB9mgMgTaSOi
	 2uJAmpPnmcV6SHXNhXTqzF6agO21tgNceAtDHAY8iMccLKWlF2ipXXZeFFnnKM0AGT
	 Sfm4D883gwt0RfywSbWuIWbxvuFKuKyRcUxm1fUemlCmH94VmoSdx0hLGXiLlvkjZC
	 sxdhPROj5U/BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1ED3CCB2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845583357.15272.17324160017873163551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33a69a32e2fcfec9d468f4bed82172548fc524574aeba259ff8a821657344a1
Date: Thu, 15 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768455833
