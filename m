Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C50319258E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743717595; cv=none; b=VQZg1P3APSuyjEMRqPk/QqwlHD7GfRC3bIju/0vnV+t/dim+e3OdK0qk48wh97SBVNPKZ109qTuLXxbF5OTZW0GF4bYyC8rhGi4UyAPfAB9JicNlu/ULC8WQwH9pBe30cla+PJ+t3p8fE62LTmDwVTf3pSr73Q7T9dWERFRfpnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743717595; c=relaxed/simple;
	bh=UTz8fxwJ5Y/buGRuBy3AcT6bVa6U5iHVS5V0LKTmqME=;
	h=To:Subject:From:Message-Id:Date; b=MxvhRQ6WK2uZ+BwDfzXI642pXY8dsEKBDBhmHobfuvgmHfo0W9VIQoKLyEPTojvVVY5jpit+SkExf1+7NkQXecF+iDMukRtQDhdd4saMwm/nDG1qLvO8ZfoU841FWu/Pxlho8TzAkJ4LY+5rYaifFTFbCgmsd8OWXwVIimINRxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WboWZr3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WboWZr3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA142C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743717593;
	bh=UTz8fxwJ5Y/buGRuBy3AcT6bVa6U5iHVS5V0LKTmqME=;
	h=To:Subject:From:Date:From;
	b=WboWZr3yMGKFBk35uUsmpXHWgZY8ceeB/hxk1sUAm/xwXyV39pQWOBHasHN6PBob5
	 a7qJvezl2g9o20IOemG1P8jbzYrlf8QbGdpzy79s6cZ06dssmnVd+dD7uUdyE+F6kv
	 swtJYSpGstaw0re4xzJsfzSfUCRO2j7p+XwGXOcIFNE4v4fwDcSblvh5WQn/LcPxnC
	 qlEzRMTQ0Jc8yQ2IqDtR8Ubp97Vg5T3R72yINJu697tiaK7ThFNwkKJW3RtbLT5XIU
	 wbCOTMC6AhVDgIQ2iXS2uCYUlmGfvdP90v/s/l1vGydXgHoKoblWTZLIY8/qvlIpbd
	 obQ4bKr22HGew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E50C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371759360.22308.9518660193986853318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a312291cb32af03e791c66f25f18d9843256847eae8da7dd49e0650ed046c681
Date: Thu, 03 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743717593
