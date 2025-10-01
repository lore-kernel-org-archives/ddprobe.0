Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217C526A0A7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759336795; cv=none; b=rK550KU8qbCHzyPpiUBs2BJ0NrPFnCwYgWdqutDvtBz4zwln1ZnE3gyMPNnnf6oQUgUAVdH4Fv4MGLcvmspD3yBRoU7Pg85WCj74zJpedbQmkOZhS9bdWJP0cDTZ5eCbIjzaqR8bYTmNc3cKF9yCzf9ywRza9WCQAknl3jlNJz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759336795; c=relaxed/simple;
	bh=Qf3WLXxpehyCsLQ91lnhC+k6XSI/Yz8NqWJK6UV3YH4=;
	h=To:Subject:From:Message-Id:Date; b=PR7BLtZ703koSLOF1Ryrxx79v1tqpiCknS8rVuorTrUFn7HkdJGb9X7WtHQVgClrL0JQxyT+nDNwZgiGvBdjUpGCMkQfjEbY+hLoU3p8s6GcgkVn4LsgA6P7ahyuBP8MqkYfWqjpOm8nehyjyi3EFCCOjMZP6Y2yBcXRdCuJv84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiEj/eZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiEj/eZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D27C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759336793;
	bh=Qf3WLXxpehyCsLQ91lnhC+k6XSI/Yz8NqWJK6UV3YH4=;
	h=To:Subject:From:Date:From;
	b=YiEj/eZn5wwkhOoUaEpuXleu+CFJWcNF2yqXJf3hyzYOYYxQg63YjvH4lwqgc7onL
	 oNhX2nIbg+dh3Hum1oROmmSxXxhXk3vHtJTYmZ+ZsOZhN0mNJARY33JD67o31VjQlC
	 WHpj8LBO3Aim98uwZwKh34tYu5y20WVC9tHiLxvdT1vicIStiqUOn7QZQxIDlaP1yA
	 zayZYbM2IRnBxC3TSZ3Gl3yLOUhBOOh4Gl6/zmx/1Cw0kL645N9e4LHPQ1AyQWtsFr
	 9a/SvXd+4VCedWP0sOsF+U6Pk2gA23UOPgr7xfD2PGNvnjfHqzX6/Yb8ey9WptCQ6n
	 Oz4acoLseW0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933679359.14599.16986417142980611061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5231f28d39893ebe60bc88dfd73e80057291525349d9331ec21010f461cdc3b
Date: Wed, 01 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759336793
