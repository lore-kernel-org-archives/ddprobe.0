Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE911A238F
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738913154; cv=none; b=iImNvvPZ5alUK0PYl8I9MgYzqD/LzRPbyHg0qEXTtArQ25CpjDxMCqgr0+gYq7yZ+emw2HB7ld7KFDjfL+esnThNco+jmqAidmY1EE6TTqUY/g/+RDs8EGwsBlNdWJPXv61IlbypLd3ZzGA2iSQT1UoYd1pOiGGG4oj2Jb6RGJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738913154; c=relaxed/simple;
	bh=iDtBa5w6h+JjaVNpFPII97DsZjIXpQKLuRUxcII+kRw=;
	h=To:Subject:From:Message-Id:Date; b=Jqoe0DBvnmqg8qq1/9SpS2YGN5tEzxqiPoEjke57VLXLRVPdNV9CMth7/f82Yx5nQLyYkKJxUSy17juVj2T9nS6mrPz5Xm2EYV92HZE/S6qivnd1CkJpsiM2+EdH3x9Q0p5IzhVdK9tyVL7zsPG9iFANsCg59sEzlC3Y+FO56SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMQi/Gb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMQi/Gb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE84DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738913153;
	bh=iDtBa5w6h+JjaVNpFPII97DsZjIXpQKLuRUxcII+kRw=;
	h=To:Subject:From:Date:From;
	b=qMQi/Gb1zY83Cr40/msiAw8I500g9k+R0wCcLp/MC4XMgJhOAktzJq4ywljqir5KE
	 8hbqCWCF1ZUo6xzaAIVLKt5EB75/QXPDbzhLUSo5pAttDbl5wS6QRfL/u018bfsi1k
	 R8wqYSXgMugyzy5WyLhog7OSDaa8cOMCIdSt89Tjfg0a1FclTz/1Z4WHONKTzX4QRW
	 p16+ojZj44fjdpg7aNU2BWgNItkRt+HLk6zaMUkgL3XsGzNUCdCA6GVS4aHcFZMFVt
	 CpsBgR6UmGXjDCjoB0nnVno8aLc+AxuReU1x2/kIcat07ivA7k4pBiWKnUzt0oYu56
	 nlknkNKvVBEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A154FC02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891315365.24394.16341163577149876143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69cfe870ed7c2183fb87db390d3c82bf874243c55d43ace1386574a1db8c989
Date: Fri, 07 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738913153
