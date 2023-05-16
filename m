Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271AD34CEC
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B00C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684249985;
	bh=7HWdjo4mQjBGIJhK/ckRk0RCuWkNRFKuyKabZXuMdKM=;
	h=To:Subject:From:Date:From;
	b=IhTr42nbaFLF6Zz2aHzRHhvaQfKWXodwuQxPatqrz/B/9BIUF4HTvrzfFtKF4vLXq
	 Sy6+mkGzMkcxvZiD7hKzwqY0MlD2ENKxBZ4g8RZzKQJ1lg32OcOkE57ekUKDu6Vbud
	 0W0dMBo1GtikUNo3ujoNguNgPVmPBZO0ghfEKWU1UMnF5NziDxrlwjvsOpYlgcMyqs
	 fL3YnUBukQoHgptHKaNEb9NPK3yHo/W3OzZDk8wxKilPZkWlkIQFCkiucasAYrkX8+
	 gvHw8cGjcpbjVTR4Cvb1zPqiESdUc4mCXaTrCme/oaUFBN3WKyzZczWXsCC89oPNsg
	 Y/PoKy/uS9xXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEE1C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168424998576.8390.2829849009615967809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd7181b79c3ae804e427bc5c238953c12582dfb17e886eaeeba927caaae93cd
Date: Tue, 16 May 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684249985
