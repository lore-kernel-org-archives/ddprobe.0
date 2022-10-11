Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79823D7A
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8430DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665515453;
	bh=6Lz6reRMAZDvjPqXs0bpKXi7tW+UidzZzRCzjGcQhHk=;
	h=To:Subject:From:Date:From;
	b=JOh8bLLT5jX7jlqq0m/oZCIYPC8avXFwv6em3p/FqB/faUwHX3FGiz7Ss4CeEj0rM
	 emkdKx0A3fWfO1+r8gjVtN0OiFsCmCUINN65E8PYgIk5iS6mQI3QgZaRQvqZFvkSUH
	 nb6TWom9nLDqOVAbzltsAJKkTDW8HZYR0G/iKjIHeNpsLCizPFHciaSLcGzwqaXAj1
	 h9i82JWzOcFDMp00SLgaNoU9LmDi7CvrCWG+k6iVzeTM9+LHJ93z/IoGtq3ZUZrN3F
	 LG7xgWfGISYYBTtPsszFKkXobGXi+SBD9dEFlPSUoBTFj+gcli7eM02MUffy+Co3k2
	 Zi8hiu2+0j4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4C6C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551545337.17073.10623176678722134807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37bc07aa7c815281e5326cb03778d4116cf121737ae440c45825412167fcdefe
Date: Tue, 11 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665515453
