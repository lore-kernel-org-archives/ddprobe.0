Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CED7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 09:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02159C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 09:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678095426;
	bh=FXd5z2QIOOSTOddcAFo65yUDbBwpBNP9K356D+EFUVU=;
	h=To:Subject:From:Date:From;
	b=Czhs0DPk4KIh7t8ts7Lr8gycoa4r2dbmFWx4qETp1oIKhKy0FmHDbie0z8BmfpgLg
	 k86nRqiDaTbOZPQZbmbQ9HXb1a0jciRwwDXUZh/Q33OGLhL7YLYFA3zsn76ZYqfT/D
	 hPZC/ab0g+eSBc2ED1Z2ZNW0AatZ0CPOmBOA7f3yg3B1hP8OqTFsXennSXRnd8ZlkM
	 v5CEL9H3YdujHha2SwQcu8UOaooVrxRp9lIqiggKH/vzaEA2cUs9IeTCUOp/tGZMSu
	 o+pnbcDES0y/cxi1bGU9YqDcNvLXmmJYpD/WeYG2TFE5XgxNV0zLY2nvf7MMgyzMgB
	 6/dZsXZRBf9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6064C678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 09:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167809542586.2505.5145234414841670176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8dc5ac1ec75744a3e432282da00c40a2747636ec336aa070523d4966a740d3
Date: Mon, 06 Mar 2023 09:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678095425
