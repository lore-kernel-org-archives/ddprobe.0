Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD952582
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B5DC43141
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667395854;
	bh=m2GnOjzsVGpb8TCvMmuuZhA+aZlRM/xRohEVWWs8T1w=;
	h=To:Subject:From:Date:From;
	b=YdbGHz0Fqe5bsIxd9R8vCKCrnl6TXmmuP9bK9hZNWOJo28EqfZV6tHB7W8bS8ejnw
	 E++5q/8OUrY1YJfKDD2dHnEq0no+Dm89HV8OUxsO5AYCcnr0+cVzxeWVR83JuJs6jS
	 40nOnqilR5hMKAvcLm434HhULaIZN5IQ3FIF7b1ujlUxvtVq8pdY68lK4Ivg2ZHMy+
	 2IeaX29IehZPOUlaSbjruXR9JpwtSAgqKwMeSbSr3gMLfgytMk8wsfNM1YyGe9sIQf
	 Cy1tu5cc64HcqzQ2Bin8B/c02auZ1w+RnKZMe5F+9HFZYYoSPN00K7rq1xJRaqFzuD
	 Lqm40V9KzRDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55426C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739585434.29999.2991765610849119658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1e7ab55f2d578c933d2475d919e504bd025319de96a19e6b0c21e359949d3d
Date: Wed, 02 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667395854
