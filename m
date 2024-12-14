Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3675629CEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734216954; cv=none; b=JHaJ+yZNc1ILrw7LveGhwvs2Fp0SIJGjUaKHTlj+zTA8Ig0H7nd0GoKGazQv3+koQNDc4rC85NgnFbLZT0UaZIMy6n/Iepz6sWl2rpT3kmfV6+3sFc8xx65v0aMEHxJFbkiScTFRJ2rJ2D7rGmhY9spvRAc3AO1kadkgIFHuTrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734216954; c=relaxed/simple;
	bh=Bvcu1HKhhwxu4NSHxJdg3srqiYJzYjLERh5HBsAcISY=;
	h=To:Subject:From:Message-Id:Date; b=V7NTW7U/wm2NWvGxbbu2aRMIa1cpjc5vaX8DjCt0WfV1hWANvkdMoT9Hcsh6tmf0ibuz5qXGxbSGdFK3Y2DzhVbe8utrcESCpuL+lkP8MqLaWMohwNO57w9BKFbacNRqOpJXDrCibm1yn5lmE+M3yNAq/hJJsbC0VQRE3tnVDPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHFAJ4lN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHFAJ4lN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0961C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734216953;
	bh=Bvcu1HKhhwxu4NSHxJdg3srqiYJzYjLERh5HBsAcISY=;
	h=To:Subject:From:Date:From;
	b=BHFAJ4lNJTetcfqWVoo8wVdOC/x/30ZqgLadFc1hTzGOhldn0HpVPEis+EUp3RVdo
	 egmYycYLsatVztiAJc9k+uLyt8S1obicQUx9vOOqd4Rn+dN7HWOCMJGuuhazUW7Qix
	 IaNHAPwVTTnOc42TnuVqnuT/9N8COwNjPL8x9JwsAkZ2NhWdOwzfVsUJukvvTC46CQ
	 mSDopP4lGG6YiiqicDG1II75RlMvsKhLEEYpHO0eAAzDZmlxjddIUJTJcnUqH2Lt85
	 6XS7XPNTW9Aj+xkE4IjZuOPlyGlXd/pWXKaDWAkrB6Xj7ssq41KLWZmYcjip0QmKt7
	 O2lWr5bRJ5lwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9DCE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421695361.28089.1571488644556529374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8fd6537fa42e86bcaac3d669449735bc7365f0fab1a3da46ae8748974db7e4
Date: Sat, 14 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734216953
