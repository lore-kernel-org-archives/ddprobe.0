Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4095014A8E
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713832823; cv=none; b=ZL/MjJqv4Ul39+MNNS5kH7pYfOAFsp2W6aTEPTlX7sMmD/vkpipA5D73B5D7d3LlLXtwfmwVIwh4CBzevT1TG4KizrD4Guf5r0Z+1wDTYikYUn2AUFkcSuzRynZJu0+ceeMMusYT96Y4WSHUKxu4ktIkEOSHU7i2NxkrgLUDP14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713832823; c=relaxed/simple;
	bh=pfG6BpsynXbAszN7Dge/iJMajLhY/jQ/x1eQ+z5K9nw=;
	h=To:Subject:From:Message-Id:Date; b=kH+rdrTeFcKiattAHnkwlCwWEiEriy1/JZ4Xwdzi9gq7OAhPzkTCOTkvBhu5RwvHWGbf+RS51kgBgxiBPB0NNDIOozAJu5qaMMMgr6QhvxIfZ5rhuF/Tfi6MbU5NBl9yWT7IU2EgQDPKEI9bvyxV2JjthbMIMWB5rAhxYckEo4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHpie8/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHpie8/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF81EC113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713832822;
	bh=pfG6BpsynXbAszN7Dge/iJMajLhY/jQ/x1eQ+z5K9nw=;
	h=To:Subject:From:Date:From;
	b=BHpie8/gz1XizWLEKTyMHrHAOA1kQI/xpV9re9BWxkt5PvuCuMSbOguDiCcyWhSSL
	 E6WYr1UHAJKYAfMQY6OYXV2IjkLWzm+h2/VDjQOvkJ9D9UTJcIbJrmNXt3Kw0quu1x
	 a9lAfO33qtDXsqfRze+wjpZSdfz+IQKmYvq67pgMvQgFPHXct5RXSNbCnYL/UMl+XY
	 yG12AfFAGso9b+hTWMtMm1UvAcMXP55omww4dKfjmmVf4fBOub1yxvy6njqT9sNww6
	 qeIPA4oDRyEURGjyNF6RyHspM4nPQC+C8/cf4znIhneClJGkm7Uk1uppbEhA4zWyaF
	 ZV9yRiM5zWflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCABC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383282277.13005.999590968705995878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b10028a3b6f9f2c608362694759e789853994029b463ff0c722febdb02b12e
Date: Tue, 23 Apr 2024 00:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713832822
