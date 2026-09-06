Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4899C3093CB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788703234; cv=none; b=UnYYNTxGTZzb3/7XXUcKgx7HJYuHC1DcM+gH0LZ+60HB6/swt+zPPdhMDJAp+ds7Vrzxe63/RuHMzLv+NreD7DLN0BXOG4RNGYwp0uYO5YNDIOydSlh1DbhzIl6SIGsNAP2om4LlMs+Z3JGKK5oFeGpB9WsvIN6tb1TrQtt+RM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788703234; c=relaxed/simple;
	bh=f9EjvTkjmOHYnua0VeaUxVm3hctRa5T4P5AoUu3ShjE=;
	h=To:Subject:From:Message-Id:Date; b=cV5Z0CoP/WjJDsei6zQpAzaYUUgmJDcZT3O5zFxl/VH4cTcktUJTGfkGW/NUU9Vg1TcxlmiepV8vBOPIqBCdQWdHFApkUsjLa9MFylVu+u99bNTKVgtebnGqnmU1Bt3mxDfT+Shr1RSNdo+YJklj9oqZen23tjUIN+82JhRk0wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HchOyB+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HchOyB+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2054C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788703233;
	bh=f9EjvTkjmOHYnua0VeaUxVm3hctRa5T4P5AoUu3ShjE=;
	h=To:Subject:From:Date:From;
	b=HchOyB+gmyY9RN9mP7fFIJbAkXw4H5eV9cnDsUtRSZeNwyg0s4ZBLKJZvDLbbh5Dz
	 3rldFAdHjGHSdBVN7OXuFz4bMOstlqu6EyINx1QP9LiyAADSLCaSf8XcMC71GXVMFp
	 jtQ/v+VSqym2QGY3Zm78Iudv4r8Y0SwfT5epRcl/POKD9PO9rub67Nd4vkJRg6J2XP
	 5SR7/R0M301O74ltj8dvpdZR6+XujkE46qBmblPvhG6DaU3X2yMcLHNoAcUz1C+7BE
	 Lc5459gC8gKqBBi3L5amzsZmVsv58KPtUKmj3jWYrkw/9q4f8cqScVufg4T44f/5U1
	 ykxzAY9LEc1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE9EC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870323369.8847.17219914416393904567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf953c711bc09229644f0f298fe97c1185414b7fd91f37f773ec0ec5b860cce
Date: Sun, 06 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788703233
