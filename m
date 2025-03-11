Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5F31E9B1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741670934; cv=none; b=B5m5R4xd1a56Qq1zNaQefkhOv2VJ4a15UxEneZx6GgoZZyxnD0jlrBjTVSA0vqmN/xhMh3HFsObJNuS7jrcCqlWtONfbFvCVf9tYjU+okQ8menr02ie4y1igdeDMIL5N3rBUG823cnnD9sxZpyV50sKBxQKeUqYOqkXGv/5OR58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741670934; c=relaxed/simple;
	bh=EapX55nSduF02wpldf+ccPMSoUwCJo/DzEE8ChZARWU=;
	h=To:Subject:From:Message-Id:Date; b=SDvglJThAPgQvhxQgZbNj+pOHF1IpKuvx4DY6n+XVCX4zatCPnA+LoaXKNn83AXi8wYo7qomtXNJVxx8+VFphoevMGPEuN8ktxvKKAHPCNzlZXnMFSOZvKRgGtfSQ4LTsnOHmLOmPyf36jTLtirAX72wMDhgfSTMqh7nj4EOZJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl6b8Hnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl6b8Hnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32CCC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741670933;
	bh=EapX55nSduF02wpldf+ccPMSoUwCJo/DzEE8ChZARWU=;
	h=To:Subject:From:Date:From;
	b=Gl6b8Hnfn/+m8LT0eBqt8gbx9APQoQI07JqvauhCU5Bg4KHKH3HQd5eQDmh0lzZHi
	 Y3pUs9JVY5jwii1ebtlq1RUFks8G7ZlNjhOiJLYX0mr1loqSFr93yDHIKFyuFUPLcU
	 HHlsBBzx4j0CQWojL4rCWXH+5aAjep9eqImf4CyjZTu1BfIeUIyu1neRulPbym6X8Z
	 P+DBXZRyKAtBHVApB1nZKSnnMmrwhwcq//YhMv6zfP1Pvku9Tn73vDphwhM5ZR4qBZ
	 oXRY8O+R8dIhnltrQNan059RXpCwpYaGZJrBNfjcon8Q8MJXGHvJ3r2yo62JK46E8g
	 0oaf0zYT31KkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCE9C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174167093363.29058.13681946051751904990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe4dcf26f40696a690435a6d2e6b26813409acdc2808f880c1f27a98db8a1a7
Date: Tue, 11 Mar 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741670933
