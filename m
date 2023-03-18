Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B542917
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC9EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679148725;
	bh=3Hy5GiifEtJSXgGfOxc74o9Giiy10Ib2mpmHUY94vN4=;
	h=To:Subject:From:Date:From;
	b=qlCjH/GOmHdr4zwjU86MDLyzaezDRykTAmDS1PS8imj3IQI12m9YxcqxijxIyuMPz
	 7zZfZZ61T/nHo+j88HrIkw0Sn5yRvC1TFap5g+Wp16JT8Jq31Sqh0gPolsTDdNJjYk
	 dmXdWTZSaYVdwRHbcwyBTBdZT55JUD0+ei++y67PXjmXkvHL/HeqMEJjmbaGoGPUCl
	 nQGbmUekr1rHcD00u4MAY3UOCkDbzyWsIzjntEy756Ii6i7g5LJhI6BsjqvyAlyH7y
	 +7MOJJelrd9Cm3pUZyYp+lzbSe1Z73z1QSMO/QrOiw0B7cYC8mFo7o+x2XC7KHGKxZ
	 CbqKS/qK/lwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC07C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 14:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167914872576.31327.69171852175959487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0f728bccd5cd7072bf408fc3f979ec868f57361fbfaf79565d6eb4ba42c67a
Date: Sat, 18 Mar 2023 14:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679148725
