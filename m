Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCDD1A288
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748085594; cv=none; b=EECGcrwZFkAhIFoXQ//75uSsYMhwtPw8+ELNxfe8aJzaadwmkrWjatSXVXMmXuuWoKDXaHXFIIfJoiwHzzHELGl1WgD7L4KJLfh1SkInhWgTd1KgLbUns8gGlFAFYLaLver/A+/fMhQOtrlFJNUKp8m5OVGbQ+dB23+mvNc/u+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748085594; c=relaxed/simple;
	bh=D+9oZM258jN4Fe8sTrf+2reI6ggxN5PiJ1kAhHN2Lxo=;
	h=To:Subject:From:Message-Id:Date; b=ZvG7acgu+NO39E+1zSFhNqz77N23WRrrZDb9Vajd0k5EIqd8XnzBiSgWGVmXWiC/rvd6geAJR6btnMZ2oimC5q55vc+VlKA6XRokVHr8zcVyP9WhQOPB2zPWiK5Cz5XP+H1lhuOKrHioTZxkrm7OkOGnEsoRNbWVu8+RwVvCTew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lr7Jqxm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr7Jqxm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748085593;
	bh=D+9oZM258jN4Fe8sTrf+2reI6ggxN5PiJ1kAhHN2Lxo=;
	h=To:Subject:From:Date:From;
	b=Lr7Jqxm4QWCY9X8mbmy7nTC/jZyRtExiG3m2ZLC26PkAvRJzh0WkadHX+bkz/5WaG
	 3uCuur/QZYKclXRkeas+RW4JPk/DHXJV9CpnroKln56tk3EYwnBYdl5758843Ne1Qc
	 C4zM8N/VfM+fH0iUsoNtjROUQzi0GpRikjfaqOfJ9WEh7jkNQBej41TeRUpMFjU1GZ
	 83LrwkV2m2n/0PoxBz9FwyfBfSGjm0lNfQVVj2e+0GM+f7FdkO0gNJ9l1QxzHSDLnZ
	 s/358BQtstEXfVGr4SP1AxPyMHGDaFKtoyPCxdAAkaeeUaouTm3oP7kktCj2m0gRzS
	 NwF3rxXpmMtow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF26C54EDA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808559357.25469.12826437567289386680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3df1ec4427ed30e3d793cf8e4e53d20a1aa6c508a6716cfcaf0efbaced573e
Date: Sat, 24 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748085593
