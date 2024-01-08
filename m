Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01B247773
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdScULqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C78C433C9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704723496;
	bh=IEaRjXxa2JZnfPvXKJWK2E3qBe8NzRZRyaZ4qxcaaqw=;
	h=To:Subject:From:Date:From;
	b=LdScULqeQ5k6JJuGu3Q0hL97gU0KsyDwT7Hhxk8IemcBMMGQLq5K5VG9xhOehpd8Z
	 GNFgB4sRQHrEWxDDGUWXEUb4yw+eiq2ciajAEOK5+U40dccFZbVhXlbXPgVxiYM/VQ
	 Vd5j/pybO3IN9IYbBuskvbggYkxvyaYa9Z3q9DIXZN2QBolZNxW+/R5Tt1nwSaqOSB
	 phXikCPgLsJE5vDxx9NH6eMLWUGz1eeqRyqDY4LAJHlGA0Lgy4f/ngq8pEzG4l6oXk
	 NT6jddcJBMxWaCgcRfe7anh7SGjF0NSUnpZy6kJvXR6kRDMwV2KxiEqlC2CmgaspRg
	 SMV5cQLnNeLtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9A5C47079
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170472349642.17270.13640262744569890099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e918faef15a9709bc0ef43bd1a1035da363f0893c3a90189b2472675497c63b
Date: Mon, 08 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704723496
