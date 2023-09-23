Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8FE2567
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 13:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF1DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 13:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695476708;
	bh=gtUuOxqsSnWRvFmG+H6E/RMM44/fMT0OIbByXj0dWj4=;
	h=To:Subject:From:Date:From;
	b=B+9R15frwyUGuL5V4QZ1wqyg6OdiQFDB/WcJ53E7u+cT2ruc7uvfl0GUpc04798tB
	 IqQoAfdvi0SkLmswbwoYjSxzskoomt3erVruvL9avh4Nm1QN76OsuUZkbKB+PHAU27
	 wi7pzb5B/yXYflOv3XZPmRfdYlUjsyYt65Ssvz7D4OboxysIlY55QUpDEKU133ADcg
	 fw67hC1hWDTOG4mMSXibNr9PownxbIVTOWnWOdwakrdgJDqpU0Ruo30eYE9iKgx8PY
	 hZ38m0iBVnokNTyv4v2+zjStWQiz5gIdtw+q2tW/3wfW2dP9qSZ32NbRVid9NZpDgt
	 qP+T3z2Qznd7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1A7CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 13:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169547670874.7161.7887023054806843602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693b2404b4c38a7471119263b60e10629f099e554ae9380a60301f515d49a012
Date: Sat, 23 Sep 2023 13:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695476708
