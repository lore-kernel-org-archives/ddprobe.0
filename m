Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF306FB7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F454C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673899287;
	bh=fVGImITSaZZxX0yo+BzsanjMwIdQDzu7XvLEu1lnxJ8=;
	h=To:Subject:From:Date:From;
	b=E9KKcIhk8d5mHroPd8nKLbuRzq6YNh+jTA/tu4/yScKSUocqfWFLQmzjojLSMhujP
	 7q6RgusggIpu3hGhzLTksZ75u2iSWOQr56jwQIQVrkP5Fcnbu1Hg1mOJYMYlUclchV
	 6lc9VCpHgGX1rnWdCEHIH7tjOcCNqRJLZTKTWR431HODKHuUWY32ueAYLIKpOCGPAb
	 0kN3MFARlg6CtDnpGWkrmeSe+lWXTS0RoNZ37jVVqUhGc/OzSJZZhDnJgtJX4KZvOS
	 5W4a403Vu70m52J7gwqD+3TsBqD0HgW3iZDh7LuHHkhsXTQNzhJ7xOAkxaHDBh2Sfp
	 XQj3w0HgiNwPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CDA9C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389928749.23818.18188657410136089630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578740e2e463caa91896af06f73d92fc90f55e225f842357556b6bd8702d36b6
Date: Mon, 16 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673899287
