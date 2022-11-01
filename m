Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00B17E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C89C433B5
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667305254;
	bh=kqOcTauqtoyYgk7RT+Mo+tPlqTpt3AGbQiTkJOwcsYQ=;
	h=To:Subject:From:Date:From;
	b=mwRNJN3qm7lXUA90WQGH5vhthNANxaRSSkbaDlMrGr6lMJoDyVEXBDkjO/BD1vg7t
	 V0UKzEpBuKH5NaGYbDtByMbTR0ys/AN4f3IoVYpZAY1SGUMhrxyyfZhnv9PzHv/vNS
	 GBP96kEoyVB7EW6Lk+HS3ejf5tsnpVpM1DajowM+zft7pw9+FS7E6xZ2OfHIOlfeu+
	 zic+E94PqAIlIK5IixjrU06XZcNLW+A4uiKP7uyi7NjtMaaPRJUHEf+EZxqJkVzGRP
	 Nm2ZQocJC7aoJl7MdCDQN4w8DtFr0tFsH6yM7JLunNZtwd3g7WADuw1IX2GTjXwhaY
	 xmCnlGOvZFvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F552FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730525431.22687.16486326527836525618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b678a65aca0dc35ffa16db931a6fac2e934467a841f7969766437de9a87e627
Date: Tue, 01 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667305254
