Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5303368A7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781619394; cv=none; b=XsdZgk9WZX3bqD1mO5zFQIRy5ITDv7ZFaDbHVY6igFIu6l95Yz9SOhfQ+olB3klFl0wC/FznQYtwZlAPXF4xuFADf++0cqqmS9JZq791G4YJu63OAXaAbkx0OqXj5jFdGdd5QzKtCw+bG8ATVB83YepDCJwLrTUSW0kYqxK7LnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781619394; c=relaxed/simple;
	bh=tPv3YHvDBsY7kFMaPjXk08L5ap3FzlzdUOeUs+GkyC0=;
	h=To:Subject:From:Message-Id:Date; b=jUxlBI4b7XckzMnvRdVYt5AC7p7iV9w6vInLJ3+3zEuPXTrMTE+28iJgeVO6+bfAjE1T8BagWnbg8B5sXmn6OHHH99y31cCcd9Va7QT5/EFJFfixA5lMa85BTfYmkCDpjrBf8VM3GurrYYpDDmQkecyy2QOutFDI3M62bjG/jrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnRIqSQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnRIqSQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC6DEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781619394;
	bh=tPv3YHvDBsY7kFMaPjXk08L5ap3FzlzdUOeUs+GkyC0=;
	h=To:Subject:From:Date:From;
	b=cnRIqSQTa6rHwXQ9yfuNZ8+gPJl+Qz8WluLrDpMQGYxJzN23FuYMbbJRnE/EP+VA7
	 ms0P7QRaEubmSKzkF0R9ChdWeDJoVsgF6CqcQ4h1Sz18m9OthYUy59dG3pE622NZkr
	 CrK4pI/KKmFNEkD7bokDIwMaXbnfUEJ1QpgxwKBKMKMLnE3a9pFqt8kMi3LE/9A4h4
	 WS+T1MA8IXChoNMLY78seX0hZ2weG5m8XxP81toWEHfylK20ETJEAAk1wbUTx6N0Gw
	 sA9PxMu/ut4nF74HiJSuh7zYi+tF1YdmoDQ2KFRAHLzsXt5z9YIXGmwkZGSNvWn5Eb
	 QFK96FKDy9iug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF1B3CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161939390.28286.4288384538073861855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdb1cf97138bcb065eed4a39e5a3ddeac62cdef416d1cd833b9d870ca62eeda
Date: Tue, 16 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781619393
