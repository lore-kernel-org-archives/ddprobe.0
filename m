Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB9A38AC97
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785340834; cv=none; b=bz3CoGovUzyaEhl/wXu84BfHclNOKdBqXHY3SHU5Bq9itrZenDkSK6dvcYKgDjTLL2/yzOR67KZPdZOKRoY7Zm4nC4fDiYuI4hKwijQCn5cf9hV5pucX/ee0W12texNLFbd2fh5TiWsEA4+W2bGMXxZpVNCWjDmrD3yGNIj7MgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785340834; c=relaxed/simple;
	bh=lAJ4T66W+rRj72jAs7B+YIuREkSteXU+f2e2AZTGTeY=;
	h=To:Subject:From:Message-Id:Date; b=u6t1pyXvUSN4h0S/MBn6F8RrZJD3vCIkSGi38ihUwAGi7J+EtRoeQqAXIZRDQuw1V6bIXzgulUCnUCe6m4vmP1Iy8znP5qaZqp8/DSNCv/Nn7rg+mQOFcwGTCcb6wOpQhcROiGL6Rqg5AYp1/deDfd640K+Cvwd96bq9M+KbEDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na9dlT+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na9dlT+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26A3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785340833;
	bh=lAJ4T66W+rRj72jAs7B+YIuREkSteXU+f2e2AZTGTeY=;
	h=To:Subject:From:Date:From;
	b=na9dlT+6OOXrckl7Kbf0Ibs/hnAMK8nDnUv2YrDkEWVmYtJF6LcyZy2JN2VwEstz9
	 lYL8WMqqGxx/sYnuBa7Oe0iuTf//nKAuf4PM7PKMr5bR04ov+Q8jUMlrqcNVACTKEp
	 3ROL/2tu0XFb/yOF6K9OCfmdW9ZTlQmV4Rq11uhAhB1gfHTAgJwloBHZVq16YOogjm
	 hxk0Z1BWMio+aZxJ5dZ1FVtYL7aQGdUDkeZ9y2LzJevXNkmY85W3jOGRR4H3OzEb5b
	 r0wkIO6BnnHH7/kOjC1wcPmeiCHKqRn6oMiLuAv8bU1e8aRbQdIFfiPKSOoSV/deSR
	 QAbTedp8Ne3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D3AC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534083368.8347.7015459027494407127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e250eb39414699a0aa4356e9f01773a9d1303000ad061cc2779ce945058d8d90
Date: Wed, 29 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785340833
