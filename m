Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CD078281
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723142154; cv=none; b=W3xH6usgZgRQZ3BuZ1zOgt266a4iRTOHIYEUp35Y6v8NSbHq1i5OVHgUYqPzfkwyGrVqKKae0G3lFdrmiC05oNy9t34H0NUfs+V99svw4RAb2gj65L5AHF31Yb0HxD01Rt2MBIPRy4yF3/8JRLNqkZDXXW4O4J5V2yVKifq3zZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723142154; c=relaxed/simple;
	bh=YUzIU33qfcUmbeUjihh+8NS8e/sYR7R0SRxIW9/TJmw=;
	h=To:Subject:From:Message-Id:Date; b=VOe0T7uBW+GlLW9bZpsff4pqmFr9SgIXgwLggagL/3v0lRXbjLwNJM3QaI/FS7JvnTOOQq5SGsxIr6xIxdHom7kgRrmFVlYybtTOPO7NgxElc5EK46uOJu8i9/y6Ecw+xCXBZz4K6G6NtedvfbIlGAyPOi7pPSIB1LlhfQjOB/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC8RpCJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC8RpCJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF6C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723142153;
	bh=YUzIU33qfcUmbeUjihh+8NS8e/sYR7R0SRxIW9/TJmw=;
	h=To:Subject:From:Date:From;
	b=VC8RpCJinxvIIDj/Was2w9oHTNtvBNJDcIhett+qlzPISKZ3mpoXaRg+TDYEDLVy1
	 h3BzmPe1/uHGYgUFg7fdkP2Z0PvspOujVGIQdKZXuXI79nl5RA1aVRnfQ1Foyf9KLp
	 N/axshjRAAuNe2lJF4OtdGhu07Mp0Xq2nV260WLf9EaMjzlRfRvG/7nrwjdp28caua
	 GiVH9icalf0sahJ5wCocG7FI0XUiujc8EqjODSdUBHr46jHhs2EDs7cqtg4UJJ9TTU
	 tW0yqoYWrKwMaIP/fzml7OihfYmkWfi/u5n3tLKKEF+dtpRY+x9X9hqsAg7dDNInS/
	 ta5OLSQvDlr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D62C52D71
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172314215361.24310.14239312584719370625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa47b04a87b427abce2f5d12de8897c3de44108d777dc6e699356d53574d4b86
Date: Thu, 08 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723142153
