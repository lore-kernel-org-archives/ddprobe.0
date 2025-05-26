Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C869A1917F4
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748259593; cv=none; b=A3N4sT9ihDmIh52DB+v7ottY0gFkyEZToFwvRq5dS6MWtTB1h7nX3vEaXKEaMXme8X+q9sOFOPhLO/HKEo1Y/V+IAEm22WPTJgK/elYzmVku0IF/W/I3DFUw8Ru+vFd4e4M+P/K0Gte7mNsncfLk+EalWOVWYirXNJRCnUPz9Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748259593; c=relaxed/simple;
	bh=POVCUyP8aBFj8Pyc/sdf8J1VMT+JP/8+rN64lTt7DYg=;
	h=To:Subject:From:Message-Id:Date; b=FA1FPQfKXMUbG4XSubhZ7SlSOMYUwQdOvpLdqsm6IKrk7cJbgY/f8n5BRf5pXRCtbf2CKC8FXZuSWp7pQ+ryo4UQlVKk/+X4RNBeFN+smhL7LgQqsAnHmtHHXDW9vwebc3p6lANTVmVxCAheeoySv7aA2rcId1uIU4Bc2u6Sa2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdY9GAk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdY9GAk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7896C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748259593;
	bh=POVCUyP8aBFj8Pyc/sdf8J1VMT+JP/8+rN64lTt7DYg=;
	h=To:Subject:From:Date:From;
	b=RdY9GAk+jcqMO5+/8xmphgGtriQ6zw8ySR1o+4Tjymk5yuY20wKa8wk3xQf2zYBM9
	 kJc4XWnq7WCI5XE9ijZIIEhLG+sIfiChStYKyc3eIyZtA/yBryD8wWGeSSdebYQ5xN
	 Km5qqFhrFW97M1jcsAw0KaZVXSG3NXxPZwROg1iJX/x8HX7QK/w0NyXH3gisGKjoeO
	 W9qhvsSPhLqSLWp7a+xQMYdct9l7bnyzE2g2wWOpT7wSBLIKSTgG/R/bP8iKzv1Id9
	 v7NbmkSdG2+wHxcIl7IuRAGVqx/6rHGOiAijk/TioyI5pXGI/odQmuGhw+AvGPuTD5
	 6mk8CJxlPGd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B5C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825959358.11027.14781585709703822689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639554dca0310375a3968d853ba2888e56cf15dbfdb0ddc9b8cf65edc100ea99
Date: Mon, 26 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748259593
