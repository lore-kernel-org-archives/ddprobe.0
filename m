Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C419359F9E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764955374; cv=none; b=qUxBWz2B3qKyYvdPAeMvxg8evP2MCWlhLaOZuyjKBOIObtCwSzMauwBRO//436vChLFqr+8hrjqudXAhxWd20izTMe1/Z8XlqfjmSBL6xJsf6JwG/NZzmT7gHEGOj77jiVd8+zXnVQ7wXVvRR4BpIOCKCRGQvAP+fA9Dx94z2ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764955374; c=relaxed/simple;
	bh=JozbOII/I5fWs1oX35tWOzZ7d/GSfTqRMr+E+PlwsLI=;
	h=To:Subject:From:Message-Id:Date; b=T5SLGzjE2BQB7yz45IOF303eoVX39Db7rg/aVL17cLjHjB6Q0EGhdp5vyeDu+GXGaJBb6bzbifb4c9w0NnCSt1w5F3QpyuEFuK0g+nGT4gtj4tAa1gMXo1OTlrSTVRRA+CXVNljNQWIGOdiwUYWlCNbfkMPKdJZKwrynWMRYpsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIBsIq+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIBsIq+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764955373;
	bh=JozbOII/I5fWs1oX35tWOzZ7d/GSfTqRMr+E+PlwsLI=;
	h=To:Subject:From:Date:From;
	b=pIBsIq+Iy5G9NP8y91tOhGXrEqfu2IQimbvnT8Hled5vKj7wiceAjD9A7OQcC3BTv
	 AEz8i5ABE0VOOkfrY2TU25S5g1LQCCjadqib10uUt/JsDdmuHOrHVqllqDyCRAYXAX
	 a/XXrdBrIIv177SVfDpVy7mE9g6VvLMYEquuuMUg48Yp0hyW0rRlpOIFxSCTx6EKZ/
	 Rohvcdvy+rUsfdkYzXUR8asZA/33LRvhYkQbmm90nBH9lNcq7X/qBPbDhCpve1dK6P
	 RHg9sfEe+2qwiFyCxbydeB1BSNMtf7l6xOWjJllypkJROvCxf3dcGFSoLFPSWI/P3u
	 B4GvuEBjnBHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706BD339A0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495537360.12463.17792726468284485881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036371ee4aa6cb64dc9266afd079c70bcc9ff287b423dac620c17ffffd058294
Date: Fri, 05 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764955373
