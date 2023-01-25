Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A591102
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 05:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC769C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674625985;
	bh=JjyWJdtAknbaF9sLh6yMIVdCGATjSmzQXzoobl8aWac=;
	h=To:Subject:From:Date:From;
	b=PG/aidi5N610ehw9VKeTFH6RSqN2Ggmk2w36PMOXssrLSNzgXFEKhyDjLI4I67TQq
	 RA5AZWjvxZBBP0A7J/lHbSqFMHrhq/JJ4gqA9DLOq09JMrlgsGcUkuARoAGKTzd2/n
	 qW/AsUF5gaZ+Dw/QUGcWkwvblqcvV01UXjUPA13fWgNebZV7EjvcFU9YK/aIz21Gql
	 M/UFx1P2KQQTv7Nue2dKeI8K+oUqBCf5kWpAspFLrU+hY3fzxS/iTt72CahFAU+uZf
	 9nC9Gb9GSr5OQ0/YBIE/alLhrSYMYPm5n6/idNx8XK71zmUgyYRqSQ46rbxjGs9TEQ
	 OgZyUNEusrQuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55BEC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 05:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167462598572.30424.18171925841105415500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa81ddb9663e150354f9036479ecdec1c3c0d95646644296405245c8666ce7cf
Date: Wed, 25 Jan 2023 05:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674625985
