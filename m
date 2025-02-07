Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500A610E9
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738896354; cv=none; b=OVK0vVEJhL9ZRwo5Vx1cB5jWTmhqiyLinaGYnHwRD4QXMcVQmojhTHACtNwQ9ezNq6F4EUdY1ze9IdzGp3VL+i4RZttvf/d5zOFg9rtBDr/1We6i08dPE+eNjvbsS7GOIj0FS17ip25XH6JI5Q9LKlBunNIFUU6qGXaKKy8ZJiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738896354; c=relaxed/simple;
	bh=2hZMUXHqIfvnBFGN59lkOJ3tgJuSMiAQoUlUplZCTow=;
	h=To:Subject:From:Message-Id:Date; b=p5ChfQy7TfUjf731w9DRpAVgIskCGy5R+6m3RA83dFtucxD1EfgOq0N7nCQerAMt5RLvHPeptmfhhjV3ylFyPp1oQM6F2UvV/q1mDIMj+0hf44YQpvNfkl0Wcx0VUDYBaMpmH/lluxW5X+dISPPwtlhyTTqbKzWi8zig3lvlWTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzDRzCnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzDRzCnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AFFC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738896353;
	bh=2hZMUXHqIfvnBFGN59lkOJ3tgJuSMiAQoUlUplZCTow=;
	h=To:Subject:From:Date:From;
	b=YzDRzCnIjWeyYXTpzX7ngD6o/VMMqiKwRJgTUaII4fVisbI2C7iqlw+0wJuA/yFMH
	 onyiLtrGLIEGvzxBhGX3p/usmkqTqWT/afrOA1/0yktqbspHjA8VMLLG0CZ8v0X/qg
	 aMA4PjyZuWchpyc2dZGHdiEQa0I/T2IEX4EUNg8xvbBj69ywHOLs/ehvi74/87hUdW
	 gs3EswnAAkRCblrM6cWUAsM7C1Vy+2eWYQCQo8ZDlmJ5Adz7ICzKNEAmgvhJvgsiOK
	 ClAiU04ueSC/SOi3HaSSQ3/z5QhNe+PHWoS5JiKsGPZbAGmW4fi51ImH27hPb2TUxO
	 kGPk17dFeUvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3324C02198
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889635365.27404.2988978257292783452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b2071fe1ebfe6e4d4fec0919a2bbfaad4076a70c6bfe14c169ed61ce25809d
Date: Fri, 07 Feb 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738896353
