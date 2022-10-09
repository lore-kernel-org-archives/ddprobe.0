Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACAC85C97
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6852BC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665349253;
	bh=sSgY1FgbOBY85cIrA/BkUN0uKxelCaSDKIFPrwj2oiY=;
	h=To:Subject:From:Date:From;
	b=M68JGt4SiOnqs7oGC2YfCMg54vfI1TIWnPqVetzaWLj79bbAoSQxMB/Nqz/ASj3ye
	 2wepHiEU7TnmrIEa0HAKwZnr7p+ZO9JcB/Rqgenu/oJ7z7tlPnUZ3a6BRaZ8xMJjU8
	 Ddi0HOowxhcS+kE2t62L/v7IkE2phQhasvsfcm7lFuzwog+yxG0Z+H+5tp5bTFIEKz
	 OuYqZglYjwcXpQJAyy5Q8tkl8lWaBEv1gAkIfK+wsmFsrE4uN8lwQJfz5FMvQ3eUO2
	 kW1zLOMYQTQ67R15aiZVL5W2y1yU7R8wRgNkVpafyGKff7Uvgj7PDEPtRAA/ST9nsZ
	 +R5v7Eh7yXhVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50578C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534925331.18129.545128781796216977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9ba72cb09349ab53c89ca1c0f3cbf7fbe84ba97100787b7e6a3c94ee43bfdc
Date: Sun, 09 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665349253
