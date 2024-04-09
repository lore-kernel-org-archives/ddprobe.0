Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36044436
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712693896; cv=none; b=Fh3ibxhzdbGbcNzJYsUTSyomzNa5tEWTRmkfoKBfzQkesgDjSCG3QIremmVw73w3mqL0GMMvbmGFvsMUkuSQZ0IgYmZXTqRd6iUBln0a5uZVosCgrLhk6g6Oh0UAsBEDtrHZUf9NSIiT0nO0VPDfWUg+rGVq4ENtqbsOx6rRzt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712693896; c=relaxed/simple;
	bh=jvbUR3kyPg3uf1Qiysh6IMNILUuB5FXXj2pCJ2EK7gI=;
	h=To:Subject:From:Message-Id:Date; b=PSK+V2Zx7+jyFittGWFRJGnE4bWjcQ3qHQYNCbutyMm3hif3l9l3PUHBpo0WvwGxiLtuIr8BfcXuRTgHh2koDw3YafQVgfDLj3U5uZlBjhxjsEE89lTlKzDfTHNFoo8ga4NoYudjiuq/cZDzjGEFlS6qggp/6GFoGMKnCrkrhwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn/fQCP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn/fQCP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76937C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712693896;
	bh=jvbUR3kyPg3uf1Qiysh6IMNILUuB5FXXj2pCJ2EK7gI=;
	h=To:Subject:From:Date:From;
	b=Hn/fQCP5MiIHmuyG1v98JlZyIcUPq9xhZv7Dcu287yEjQCbv9H1LvH+NdHKPK/ZrX
	 1nluMKFr5VhPcS9ifnnMkpx9YvLiUJjbY+BY2hAervXLxYbaxcfz5a+P6uQsQWTaqQ
	 7p4fca+pSsmVGQgPKxhn6w7FmR6AiiVSYsK8ljQhf0Q09x07tyHZBxMhS8AF0Ks/HP
	 j4JdihSUgwsYw7pgmspnUtw2wV9qNcerrLr9sQwFWWx8FvZkGLw09QzRmot8UOh508
	 +FKg8RzkqqDmnFXjTiTghasxvNbj7Ox8+S7kq0dbUe158TrX0N0cFWaIkfPi6UqTyO
	 35SNdCcpXGRxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6501DC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269389640.9062.15843978549274055978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcec8ce63afa3d950399e6db932406a9b224cae6388ff05d33a635c603b7287
Date: Tue, 09 Apr 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712693896
