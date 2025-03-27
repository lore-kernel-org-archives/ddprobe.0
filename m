Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA2982899
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743076794; cv=none; b=rjslv9wEukaAAIa9IcHlM1p2dBmXd5f0M+6M28Pha7z6zqtOMbwdMrZY4JBgwghPAphGQiNohHorT6VIY1sNcmxEd34awrg5qZatgZrqn9WD+7yhdjkPdj+P+IgD+S63+HFVePs7n0CMrtTUkb6JY4/c0D9aW23e7YJpZFWz1Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743076794; c=relaxed/simple;
	bh=tA8Ju6r2izGrcaTLd8VRDu9pT3FfcA3e20QxVHrFVDc=;
	h=To:Subject:From:Message-Id:Date; b=Nv2bczSCR5ncDKcgud+EjFatn3v2TwaAH6pf8yb/G0YgJ1Ahs8Zou/B9ZkY+KIUTaUFS4a2JTHUbuC4F9oetRIYTsVza5C8sR5/M1pM1MB4LqojH7/jfVZdon92UWhlUGEmrgyBa+FRzqQMXd367/RRChDo50mL7QXIaThEp5mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyPo5wBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyPo5wBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B67C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743076793;
	bh=tA8Ju6r2izGrcaTLd8VRDu9pT3FfcA3e20QxVHrFVDc=;
	h=To:Subject:From:Date:From;
	b=UyPo5wBZeAitIpd0MJVZoNYbteJNdfUqKpnhzI5bCzWHYmR3TdgDSRlmGenjQ/Lcp
	 zPtcXsOrDK7U317YJ6TnW7Lvv8kkGzFGBxQLJGoaDtxxX+Nvjz0KW8EjPZvEG7BPrL
	 Gcu+LmOhLip7GsIYVMkaGbpJ/ryhzw4Fqhkm4FXh6G13fd7pcrIe1tKcllzLvpH16O
	 bOzwXedHS62zOPISkitxYyRvaiURHUqxpFajEWtqMq3Ecglfy5aDn/hxI3zUglljQA
	 O4AzDapykCmOZlhW+zMfo6Pdw0Y+SsVKS3eMy+xO8sMZE87cFd3XxApMlVCuI4mEFC
	 ndn/ZDYD9n1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EE5C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307679361.1912.4716821595274329632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02fcf72286ea1084d09b7c39e89a1801313b9a43c5a28b16c2439186b137e17
Date: Thu, 27 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743076793
