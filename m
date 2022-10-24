Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97B17ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7366DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602053;
	bh=49SkclOvdj2WZCp3x03aljIrA4QKKF1S616UiHq9ykg=;
	h=To:Subject:From:Date:From;
	b=Y1zDAWvQy7H54DzQqR85QLzsCRS8+c2MONCTAiSyYUnk8ZFqKbevphXgSiAEn24uZ
	 5hSLez39NJRimlQ2Rg+mlnTYjT04fTp8r5Q2rOsVSqFQngsQ7TrwGHDGUk7QvOp5Vo
	 UTVcvT1W2/qFYIGGqVXz9Gbdhj26DuCAQqquVbl+zYsMBLRpw8I7F9a/nlcEN6dl6R
	 80l6vAy5TIhQsC13Xm1ndSzId+DwYVXSqyYBbNmKaLRi8FEtS+nYG7/9IoEavxeaI4
	 vfk5yNjRYIoEMxRv8oOorTSruh+cXKhRML1PLUn+34iQD5+9ed819GvJowVBCFpJn1
	 c7+DZP5KHgCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A074C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660205336.6416.14858362880198484614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5620463ad8edd3d0b004fdf64757fd0afc499543af1b890f8b4883834931a64
Date: Mon, 24 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666602053
