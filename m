Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596773B2FD6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786915234; cv=none; b=ITEoY0f21X2vLehzAeC98e7gsFuaysET4f6grTjqQ1vjL2OIZWM/OVtlfoVmWLFRpWVlhmjKObKiJnruNs1osMtmud5+rGd7cgYd5FXS8E+PNxvA2VomBuwiT3mQp3qcMrXyq2RqYdcvWlB9OEuFggtlKs3O8a4t7UumYz7C2rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786915234; c=relaxed/simple;
	bh=woOSeV+0SpGuQntGEBz5HjHGbUcO+k9zQcr2Br6Iyq0=;
	h=To:Subject:From:Message-Id:Date; b=RGg5B+1fv2nf4MqxZPII2qAHo5anSIAopjOA3jSny2WlEBrUyDp3RM9iZsESeObhbPP0E7buZ/dFXk6apaRC4zyJpUcY22F9L7VR5g0k8Uimb3RQC5Sl/5bTWRS4o8tT6CVX+lfCxJ0rjl32vSJr4mFM0f1MjnjGRGwQLzqZiaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apNFT3O5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apNFT3O5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBB0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786915233;
	bh=woOSeV+0SpGuQntGEBz5HjHGbUcO+k9zQcr2Br6Iyq0=;
	h=To:Subject:From:Date:From;
	b=apNFT3O5vvqlXg5zvNAsV+ImzfqFaVXkGwz0NzXUs84Tu8DdF5rx4Q0U60hL7Ek03
	 AI49ecCg+WOK57/RsoW+PFl7T65Qkpub2XtkFbDW5q9Dupnzp09f2fSFz9nuxgW5Jq
	 wPaGZ7NR8f92FfSIhNtw4bbJGnc5W2bfu329XEPPcYzRB07FqcdvMF7RlUKwzKqige
	 EU/Nzic9NEk06Qp5iG+pVFtPrlf84VjvgUEnSVRGwhstegEb7D6DLML+4ZUZGdpO7F
	 CiU0OHcyOzc9nQSwx7gIV4zKirF3nxpkNwmzIoANfRBPygtJG5F78mLuyFMksNo9+W
	 DXnmKw7o8BkWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2B4C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691523368.26310.12717251882566381151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac2e434c105429f648bd8173af770e403abc63bdac2fc184cf813eb21257ca6
Date: Sun, 16 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786915233
