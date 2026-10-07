Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E2547254C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791364834; cv=none; b=QBpkt9Rraqu5Lq00mUCzmNBkVXPZVbX+GKhVU2f83X9Np6VQj3u5j5Ixc+zN8/yhpKFu7IPp6G5PcRS5EFEinrpEB3WxfQSNpw/uEU0NRDLAovN/H7wLX5R9xnolNqBA73UwwSG3/pMdbwoqspYec+bVhZ9y4F0mD+RqmLo9V4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791364834; c=relaxed/simple;
	bh=ucwEX3IpQtJm11YB63bMOIk5s39YNT0dJgj6lg3IM5I=;
	h=To:Subject:From:Message-Id:Date; b=XY7fZ4hkLB0bGTjdFLn07b5HLN+s9dZNQZoPrLfLWEZFvp9Rqp2UXSOPfrsgWrhlGWFWfAC9/yOZAS7okPlxjEhVZtMRUZ6fUuLsZrZ2yb+2IK81PcVMKVVlPpFQXeSTFhilWclKq2o/mkZkUAESBNHpJmHa+FxYo626K1ZuLZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfIKw0LN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfIKw0LN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB15EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791364833;
	bh=ucwEX3IpQtJm11YB63bMOIk5s39YNT0dJgj6lg3IM5I=;
	h=To:Subject:From:Date:From;
	b=VfIKw0LNREgpxJD1RetoQNubRKQXbwvR/oIOof8jHaSsPeL0n392LItfuHBB3O0Q8
	 AEyLnH/LEJ0FySgdQXqkn6gq6Szh3zcc1pQDLJy5dar71zL4wsW7zsV8Uog03+FcLB
	 7noKC/veYiAx3LeblTVogbNZMMdFGl8Ag18dJ5M6e+2HWhZ4MZJFhQbe8KdELoI5H9
	 SlJuxT/SG7TtlU6FYMBesSRB6oPccbEoI3YEwXVyzDdT/wHTtw88zXM0IMpfFcGpWK
	 qOn3H8Q8+oNjyHXpdXIGHY6icW2uPwnkX0ix3TRNhbO684ABuBslcEQLSMY+Pfp+Zm
	 nk+tlgfHrTnPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED3CA6007
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136483369.29430.8722045739853554288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db55bd1e50b722e6e26483d7cae67ebddad40d8f16b52ad07dd8566cd2f7898b
Date: Wed, 07 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791364833
