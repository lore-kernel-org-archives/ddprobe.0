Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD994430
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F579C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672671687;
	bh=lSLor0XDlrYrW7GQBNCqLw77cBaDZYiVGQ7CGZOj6/0=;
	h=To:Subject:From:Date:From;
	b=KCYdCnAjhDKlKQBGBrHW3wNq+r0PK5NhW4tqaalq6SEwuNZRrzWnttQsjWyJw8veL
	 VolJ70sucJAqEBE3b8vZ453evtz286HcEvrS28eGkp5Bz6W57SnnVWl5FNVej9U+qs
	 ol9LacbM+Ku5+H+Fes/Gu8/hlrRbEqJY/t+bVgDTE5TNKUTfAFN5Kfv6HoiphHLSB7
	 eSD9H/0KMIGNhsyWiWF8qGKaN4IWnHaeQQLBerTaz/YX8olJrCvdEAXamE7+lUlRoY
	 uhNgMV4rHU41PtV6e2c5Q0X9CdLDbHZo7cN+a7hxuKiutJkmP4GjfOwgpWCFCi/hdM
	 mnlubK5TMPbDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F6BAC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267168751.20942.8549147004571489995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899d0b95a40a32f6805847eb587f0aec053d42491226373ca36e03e8e625db5e
Date: Mon, 02 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672671687
