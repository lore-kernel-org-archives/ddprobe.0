Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B862D5C8E
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766171633; cv=none; b=KHL8wHl2pVMfTJF6LrXXczevk4aaLCVSYMIPagoncHaMLfHXXg1nxumfGHvoqaFzH8OXubKjdIvKyrDnO7rBHbGWQ5IisX+02WR1JhVgp2la77jHOcJIR1JRD79HZG7gm7AzSqs/BaEogMH74w3abI5LwPCvOErd9AJoOgIBgXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766171633; c=relaxed/simple;
	bh=dVfcRqukkP67LKe4/RQHrNhPcJvQHgMeqp8IFKNKLr8=;
	h=To:Subject:From:Message-Id:Date; b=M7bd+Q0AM1ZEgfTgoxoCjRLmG5kxPYQL4OQX4k3TI7ju73VV/ztmnfGRLEcpITB8YPjwSREgpVkiARMjNItY7Ftpy/p+Bzlz6yqm8AmwhlSZp/iaNxYvss4vCL7sYTpJ+IqMtkAH+sX/okCghHdQQ3uWlg6klGbQK0Gy8RSfpJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5NistC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5NistC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E925C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766171633;
	bh=dVfcRqukkP67LKe4/RQHrNhPcJvQHgMeqp8IFKNKLr8=;
	h=To:Subject:From:Date:From;
	b=R5NistC5f83IyCSKyaFdbCRiRCTGQWcpkU+OibnxhehaOzgd5qmZEdKcRCMgEtILj
	 MT6FrUdfJSSuYlTByvZh0QXLUh6XyjZXvzCkcSr1vZl2tHZnWwGTEcfgstw9vAEMod
	 c/tlexTEdbqtRdBdPiet+hezbkHl11/s3HYdL0cqb93O81pDisikOkXCyj3fbFqWsw
	 Py4ljtfL/bz47uzc0/w73XUsgZ2zYSc1fdYJ2nVXBIOoRPBNsEoqImGeHlQnXpwdbT
	 17oDBx3bXWLWzP1IxocJoAxrZf8EvsX7sUvRBH8cWRcO9+qstnDPl3635WTi/FpP8A
	 JtdzkGpL4dLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0BE66882
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617163358.10243.2013215224974846574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c894c9c3101590e6e10d3d9fda7b0ed040973abe59199d94a3a025c0efac79
Date: Fri, 19 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766171633
