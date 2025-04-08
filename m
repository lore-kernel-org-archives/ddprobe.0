Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EC1230242
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744134594; cv=none; b=XDMzvl2EFqB26j39He8kn3X+nvRHMVpkcRisZmGD9Dsfy5l9YhqHIF9wkcRgcXABtcF0lnO4qKhKmy8vkH7NrMQm/xIpSPw7xbC/skSiwOXe57RVk++m+xdnMHRlXfU1UBRg2vmn/e8/9xrBrTkMwpZLhH0QQo3RN90+Xo0fZeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744134594; c=relaxed/simple;
	bh=N9yfVWaVUjBBqyHw+GGznuRNi6qDnfzjDfrZS/Ardec=;
	h=To:Subject:From:Message-Id:Date; b=tkhQLCkSPuSq/4yk0S3bpe0kGqXrtlJLVlg/uehNgZIfK3SqpzdQgIPQt4M/XCxGy4D+sBQnkxN6+pZK9cv7/MCIm06tWaxj8tglfhnBUY5XwTNmeBJuB9QEijAu3f980UaYDy+pEvzNrDRUaoszu5csuX8rHjuUXi+hQ6xvJAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRYzMwY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRYzMwY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E60C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744134593;
	bh=N9yfVWaVUjBBqyHw+GGznuRNi6qDnfzjDfrZS/Ardec=;
	h=To:Subject:From:Date:From;
	b=WRYzMwY5UXs1KINMsa6HpbSbLjSkvT4Qcknn5IfWcdWDBAX4jtFKsUp0A2hobxdH/
	 4FA2k+gV0DHFWII/oNU0Wcj13u77Zgk3V60cAyVS0fNz3Im3woEEQFydR6D2smfoi4
	 93bsT0r2syaUo7OEQjsn6c4Bh8oQ5DwEHJey24TcY3+y1pYlcFvCqUAZP2/UgoKLYw
	 r+8u1w6rtTk14Pltpho5D9RMUVfXa41lG/CI0AfniUuvQ8FSfyu6/qEP78m5OHvj6E
	 d7yLhhfXAHOErXlK9OY6cYiKNvATbkBEED9UfpcBGYReljyc9tODq0b8ePmlYMAbRl
	 SA3jmqapqtk7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91699C369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413459358.19805.17796115217600188986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb1da6bf558f48573bdd522c1eb52846ff8806c7eb7286161aab2ec498da5cf
Date: Tue, 08 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744134593
