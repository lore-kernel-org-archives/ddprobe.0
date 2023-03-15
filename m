Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46609747A
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1F1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678918206;
	bh=jaahKz/eqi+LuZIMo/5/iWvnwNXdPMMGB9/2Kkrr+7s=;
	h=To:Subject:From:Date:From;
	b=FgbhD/bbysb91ATBtJtyri5Tx8DJ3sSSMhivliU+ALXb+6uZ11CWi1u1cH8T8IDSf
	 XVzRWeyuevGyAWIZfJ3VomVCSD3qWbj3ZThwY8OwTdEZhB65U0p+XQ+auqIeas6AQ8
	 omecS60yavFIe3GML8os6adp0FQbUkaedS9pjKBX6hzEiyOET3/wsZ+kNzhOv0q/73
	 QuO2RmhnOL7akHScYX8fAo5laqJpkeMrxqcwsFv68Kgo4GVxzfbeUx3oUkjA3GANZT
	 J7wpmt6muCva9AzBIyX4R/TzHETYFVBQS+peTcneqC3qQljVnDznKixjZ9j/1+v3eC
	 /fyWebBf3SxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA616C6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 22:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167891820582.17717.16490229570356983882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f97e448ae60b8594b7ea95839f0dbe47742930a0bf174c1d2d35385a9164920
Date: Wed, 15 Mar 2023 22:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678918205
