Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C001A29B0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6682FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664716853;
	bh=sDHLGrmIE1jvRvbSD3OViRz/toIHgIb0Iufgog6QZqs=;
	h=To:Subject:From:Date:From;
	b=FnGHoyJ/Z0ywupCTg5W6LcmECtORpjCktpJLFRLvNBaYSf5U6VfI0xfRPCwCBDjmE
	 uejZNIOsmTKfRsGBIXsbyERMRhLLiY7byYvmcTYK9SXR8tXGNCRy9tAyx+Mb+AEMM7
	 0ZN2ujgYfczrsR9hFv1yBoBN20hNAqdl9sgeDHNNP/MSHKye+9pkv8+/GcWXE0+Hu1
	 QMJbMVSmgGvms2Uncxr/yCSBStBmh5AJR9Gn4sLrdTYJkR2IBtrPyP/71tW23MMt+P
	 eny5lDfHxbgnl0o+OxN71HxniXuNIyeKLKItn1iHgnpOQcGt0WkERr+o8GKY+yofm9
	 YJPMW4mEunc8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F860C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471685331.19859.4875534974389508754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932ce822d053055dafc34a2f1d124b22549be5da546b4e7b0c592eacb14463a7
Date: Sun, 02 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664716853
