Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A11C3C04
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754629794; cv=none; b=bjbKudwO8JcG3GxZ3F8BBP2GrdCIXue7XFxOtqWS8sirRJ83yKttegtLmcwqhRB618Kzs43jEk9Yw1+g8SRBWGqj7RgyGBNeo+0+39EIVkzWNKg+FThg+uxrQMKEUMVn4BsiMJ2oZUtb99jmmDzakhFgrULrypXrjpwApzaz+AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754629794; c=relaxed/simple;
	bh=Can6qaDsSZXz4gZKd2QLNxljDChsIpNj6Tv+tdgD1uM=;
	h=To:Subject:From:Message-Id:Date; b=MPd6wZP1KJf0vF9YRSjISWUJYExRBRRB7K0K6B5EmaC9XdHYAuaVLWJykZRdjnLZUMBiS9ST+ZTBPDRm8nRfomssZ5SRcj8Yw2UIRdAtgTmNAgL4GY69jHLBhOs/vSdXO3HPA/pIF/wFcBuVDZzSz7zC9mlJlcBzTKyX/kDiidI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apxw1Nuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apxw1Nuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754629793;
	bh=Can6qaDsSZXz4gZKd2QLNxljDChsIpNj6Tv+tdgD1uM=;
	h=To:Subject:From:Date:From;
	b=Apxw1NuhMWyxd4WUjp2mclFxeenKNXyc1k4XG7IIUxIKDfIr4LTIsU8Oa/deff6QD
	 lj5gzpMJpZYa1TBJnHxh1jbNe3+eCyK45hoH5G5yg2Yl3JbLu8LAMZgQ2/1aS/LUN7
	 y2uYBzoxqbt1Uw55zS5iXt0+Pcqf363rmoY9jVouLjFDpj4h4QRMjPvn4KaSioCJZA
	 gFz9eX1Tl0D9OmzmH72ho0Zv9p87SzyU6m0Pd4oS0AUNMnQTOdGSPFu5FWuVqXxV89
	 UJ5IYR8PnE+oESPI0sv52nc33JAvIlwIQd+fS7ZKaTW6e7dE1HySH2FpgwAebc7tgt
	 Y/RYRIesUCvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A8C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462979358.4121.16147961822454438105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e550930bde77dcf7025073980606cc8430bc753a77077be2ff8e3ef8cac36cd5
Date: Fri, 08 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754629793
