Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB94185F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85428C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668508854;
	bh=JS1odS1BaM8FMqqX7wUj2/r1wnvC7kUPIXmTBYV/Tv4=;
	h=To:Subject:From:Date:From;
	b=oShmvp4wTibqWr3J4HdMMdLGuN8fBGVyPpL1lAm/l+6JRtDDdY08oGJzjOms1zVa/
	 XP++LJNYTTJXRouZlEuKdQKsGWwuFdWVbAQC4lQIHGtm6cIV8RUFB7898INHGvmASY
	 1gBocuqva5BdNHkE60D67vrHMB5VKI40UZHHOBxNZ40MJ2F/gOCqcdmC8iGOnDS+Cj
	 mpXHBYeZbdxovbkLr2QRPnquswVN2kASsQTnNlUUFKo+IIC/hbE1zDCdK/IrDP+CNl
	 gQhPr+IdJ2sDTTIru468nGd3CZbKlDoUXVCpx+95LJnJokfJ7lbZ6rr8hXAZlbN9Yz
	 Vij7ZyMLVoS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626AEC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850885439.4013.17198308679138409662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfd2f8829c7d616db0800495d7a55418fc72db4f170c2c422575083db9a8b68
Date: Tue, 15 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668508854
