Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14F97E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7896EC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665202854;
	bh=OT00sbSoYygsPGkUUb+EEJAIhDH8MPFG0/SETwH3MQk=;
	h=To:Subject:From:Date:From;
	b=WAU5YtLDUzsoRPWMyk6l9JBosFKAqzkGw/wBeczUuyb0BbWGaL2wfgoVXNdF1BPx5
	 wtbD/g2T8iFkafl0yYhe4JIiHA2G82EFCVXUIE1CsIIz0RVIX7UIrjG54SJ0Ezft/R
	 4qxvZn+VMFbVl/JOmG8bsh2R2dnhxZFsfbToIjs9xu0XUn9NZ/KwMmWnXtfS/CBrDO
	 t56JoZ2VLpy32WU4PlJaxhRlNfXZZQFiq1bpHcAsaLD7sBRpZldnvOziQSbQG2iRvV
	 9l4UXlpxvxblsmuWJ1A3dDycATiOv7ypCuk/KYTP+5/ofOcBHidYxF7q3+J6w1HhWq
	 uV/ipQaOEM1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A976C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520285335.31435.281411664176781545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3077f71d92374dc90d6b887553cccaab3937ece953fc95fe871f65c839ff89e0
Date: Sat, 08 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665202853
