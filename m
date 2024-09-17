Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA1327470
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726607154; cv=none; b=sewV4WdX/PfFfqVsaoTau30Z/LolOMbEzIggUqMyX2IDkryLBzCqW1QqSiSmRi7Y9wHB7xR19ZC2apC6BIZX6E9b5mpY/oyaaDSCsdKkLxdE7mCQhDE++Kp6b8TUcsteAhWxwO1a+sNAHTAkOi4qSicJcpc1OOjr8shUn/rXzlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726607154; c=relaxed/simple;
	bh=MLRd0/xYH02qrEuEPtAMaW4T1E4vywlKwdBAoXNLXLo=;
	h=To:Subject:From:Message-Id:Date; b=jIVFLA2fdujIYoJT4j2++Xqm5Pe/6w0gxTAtCcB4fRwJZPU1CXPdPG9eMd/eaYgMXnssG+pyXubRshxSCMEWZhTt6vSaIvMtIoOqisjw13nKrYZBFWLAcH0ge/fSrqi4eTAFl/nmeZC3UXgmX9qfgsccXWIow+vBc0zD2ygM5a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVMwzmj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVMwzmj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2619C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726607153;
	bh=MLRd0/xYH02qrEuEPtAMaW4T1E4vywlKwdBAoXNLXLo=;
	h=To:Subject:From:Date:From;
	b=gVMwzmj8yHvoJfOXn3tOh4MXc55mhQ2FdYJYmVFPb76L6muHGDi/W1Hz+bIUv2vwB
	 25U/h4tyUP1mlv9JrshSITcnzxv26fa+2ocknEUFTxNqRy1sVchQOonW0YkSNnrluQ
	 SUch4Kn9j5lJwxFols3qQIfh8SK1jykxaKP96WuBy09LlgL7/JFok/eJyS1MRGJ8NN
	 nrrxBppA2zOknVTJytscINlzUB3+bxCL946ioNrORIN/vODKARvfymc0E0DxlNpkcH
	 v+RrKsxq2ZwgngaJUO6T7dLJJJVomNDcYsrRP+bjsU7h/Y09A0NgSep0+UwjTnNGV6
	 hsdtLe6oI8Xjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF78CAC5A2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660715363.21895.11688164396461528524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8767ef4cf7d5bdd6f334fabbb1cae031e323006110044daf38224016bc746b82
Date: Tue, 17 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726607153
