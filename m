Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332CB3D7B
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 19:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4253C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 19:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677352505;
	bh=gHSE/54oZ2CJjClRb50om07PuQ8RoLbc4n7O/i6YvNw=;
	h=To:Subject:From:Date:From;
	b=FzMYgzIQMRhYd68U/dwdLZnRxGnXt5OFkoEtgPYrDF7xZN+sn5hhvePcfb3npV4PT
	 mipqePmFM8077cDGQZcdNV7r3O53629n4Q24Dq6IeZux8uG+klZqQyCySFu6l4TFAY
	 QyBLWbfrlIFGVbPtU00B2eK6yuBQJGME3mpVKI6p2f/FeRM991eW2b7+d6xg9uxsk3
	 iOgHdlzjGdqdr7doqTqUkHA/FmD9cQ0tA+KWcdedqlXMBw3ECx9xxGBj61Ej7KqVIb
	 0QIS6d//QX/Z31e7GL4q/8oC3Ki++kS9bN/hCDTGl+faD6esb6UTTd7YupNNp2roSs
	 Zyoe/aQIN79mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65AEC7EE23
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 19:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167735250573.23517.10662162460460807673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe35e7ec11901874815108cee1acf4f080e16b335c65fa53e303845596a126ce
Date: Sat, 25 Feb 2023 19:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677352505
