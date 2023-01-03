Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51AA7E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DAA9C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672714887;
	bh=8Qj3OtBrjr2AsVQZXUFXeVCKeh1kstgb028U8A6IFhk=;
	h=To:Subject:From:Date:From;
	b=hjF+zHgSi+prcsqQyysc9cFMSoiVDNSx5GsHdDsDtrag/9CmfHjbRlONGIiDkw4qz
	 5YEDq3D/Cp29beBga6ZTG0F7tAs8HT8BhXtWlPKUZ6hsvQELc+5blWYVbY5CMeF609
	 eI/MhqEEykA0P3HbZRK7Yf3NxaEWRRIoYSmwzHocRoEkUr/BMzKbePfUEJ9N9oGTsO
	 fpQ7ifpXiPIYrj1LtFoxyypG7kDAQIpBIQHz5ozi1YYcKI2DQyQf8w3crGE/Fuouz4
	 N9ky3OR9jIdeUcRQhm2GQnvSXLDYtiSOSvab+lZaPrrIRKjL1R50orbEYtXLQVShZZ
	 kFewKnHHI18EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70ED9C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271488744.7620.13438417542360687077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dd8ffb4ee1adc76cd2ffc4a0aff4aeaf28a4fa9aa79074ae139d64d41c68e4
Date: Tue, 03 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672714887
