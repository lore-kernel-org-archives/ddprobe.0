Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B6A28688E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752696594; cv=none; b=Ll2JTTVFds7qX5wK/N8zRPnKlIRLZvrRF3P3a0OPv8ZSrLXhSdIQQ8xp57mQUnSrLYO5267CsAKaRePgLtv0FXFlnOumF9tpobsane8wkHH2PrXa2IlWccOfYp1F3WecucCMu7MErTFi5cOE2DfDYwso6oBQXIWHsHl9sYVKAMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752696594; c=relaxed/simple;
	bh=M59+vzn36sYSXmRIhS5/NvdCxISeNhH2T6BVTf6wK8M=;
	h=To:Subject:From:Message-Id:Date; b=lT3P35SuXlW7igJ10QhKionOOkdWF2Ts6AbVnygJUP4KjIhqMyMau8obTOWbOGTgeN2w0dqJEHRURRnXPqvimGssgUIkdsPjmoU8NWh/Xslz0p9GzhD6/InXxlajRyw26/aEKNq5vZB/irAFAlq+Ao4GJXFUKkNRm1GiIZam+68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX6om0/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX6om0/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF83C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752696593;
	bh=M59+vzn36sYSXmRIhS5/NvdCxISeNhH2T6BVTf6wK8M=;
	h=To:Subject:From:Date:From;
	b=hX6om0/vpx1AgTwziVm7WzncCAwjgM+DnlEMDneGzQXRpZzIXWMInIydZ7Pt+vkIM
	 yE8kjGVnoHzTZRK2stIYra+6kzt+BghpOluSq1sR81WAfxce4+ROWayYF1HY/5dNKA
	 5zyaepFzTzZoVm4QBqttaJbTvsAOZ3m8cVEVZpuvb7CheeHjA/Yj25W118e0Uy2Nab
	 sRhU4SZHd7U5QK7vkdz4EIFMf0kHlXgZXGuHgTLp7Aom1zIWbh/fEyRAfUq/u1xHn3
	 zd0GdV0L+QWWhX0mjDJEBrxWcBN2ARuItYuJCmk8hPMqOsLcQS94V7i+Kw17I9zfwL
	 n8Rv+pomoENAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC07C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269659357.25795.17114114872573138341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d599273ab613e51dce8cadfe25854f93bfd09491df80f394739b4cd68fb20617
Date: Wed, 16 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752696593
