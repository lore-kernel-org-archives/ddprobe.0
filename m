Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF8E13E3E5
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716936263; cv=none; b=amrFtR0bez+W3JvGw7qgfr8Qe5u7OKhbrldb2WM8TcW0TwgkGt1/Slb7QkH0r0l6d9i+usCtDWo2asIu7jHTdk4gRbXE2+oCDv/2q6CnSEkwUySLZI6C6KtSg7vL/9HJJYYrU19+rEY3HSp6zl0HgQP8fBcErO4jp4mW+PzxzwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716936263; c=relaxed/simple;
	bh=mnBBbs0lWV454bfH+tT/2BK6NNWVIoemh3XEpASgP5A=;
	h=To:Subject:From:Message-Id:Date; b=PWxUIcXJS4D1pVyGfOkL5dWayyMOSH/ylP7KVRJNgBAoGGSPRz1zPd66mTaXdpyncnc1US/GFZKmgbV4Dj/Wom8pXHOSHHSvdhUb65O+hBmacnPB21HZZp5naNLkYqKNBJHw6uD1kyCF2Y5G0CXvGINNCN7rbI6qx/ZakoaWbxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaBO3MQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaBO3MQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FFFC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716936262;
	bh=mnBBbs0lWV454bfH+tT/2BK6NNWVIoemh3XEpASgP5A=;
	h=To:Subject:From:Date:From;
	b=AaBO3MQUMrk4XCBbFbhUqIHEB+gb/lvYPhC6hCiI23orUofRLqcI5wPZDGS/uP98Z
	 CocMxP2cOIs+RZ1Zax8EF9e3aCDc9Lf6+6Ud7jR5ssjCAJLzgQu0kaiiw5/zJXHe+x
	 rqpWLrp7Nxy7i+LoTack+1bSyvDTUrNYSieJk6UYHCXs5QEyq7+2jWBMLCzDgFjgzO
	 D9Tq0bG44MrJIq0Ruu4HPhJOyVjYaToIeVIr0pj6j+cpz1Wd6E521osPOiLoxiZwOi
	 AZxruY8OrEmFQTooVkNfBGCCcAgJiKN++aOhPsThgigNxxGKvhR/y5ld7NCj9wN3MC
	 bnOt3LrDlp1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC13CC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693626280.25741.4034143225206935866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de23612a6f90673bc3fc997f1b9fdfc36dcffccb97903c133186971201527cb6
Date: Tue, 28 May 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716936262
