Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F61D19C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 02:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EA90C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 02:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684983306;
	bh=AcK4aXqgwMWZwcm0Q/uFP7kgyidpaSMO+PnfzZ2lLOE=;
	h=To:Subject:From:Date:From;
	b=KEDBPDnPH8sTWCN55IwE+7KBKBpLX6OpmAnIAoX5fUl3yMkMXvX1cgQ1CCg5yLZA0
	 /rQ2duE6mGvefZqzt8yOS6iKAgZw8g2eRAOzQNE8WHGOqM5S9PAROgHk7qMsdkmUJ6
	 Ek8Izq7hdDeFrFSmqRk87EKeu5iU/16CC0O/gZpkFsA0TVfU/Bq//zgezo4rEHS9XS
	 tJDw/r0QuJzFzXSzTp19iUy1kO4GPorTOlSjHWd2nNoHG5tdWojvVZ6FM/Ys314egH
	 8aavUmA0N7lpiMXVaovjMw+9FYdYNUfM0UmSqo5OEI59eljijmg623mTOKYO+g10yH
	 4B37SqVmLeamg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3628C77B73
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 02:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168498330580.9471.13683811417850925439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0143ae2f265937195a24a71345a0e20c3d5ee8f07f800440542060ddf37c0f51
Date: Thu, 25 May 2023 02:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684983305
