Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC40D363
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1F4C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668903054;
	bh=BT5xnJqptzTNGqymfHCJbdDh2lz2p83uWjt8hoL0HmE=;
	h=To:Subject:From:Date:From;
	b=VlHrCUQr+iSUic6u0uSzp8d9WRozOLmeE0PVBzNBz1Ynr69TNzrt11aPz3CBDBM3d
	 Fzh4LeD9N9oOwdGS/9W8Z+u64npLW48guGDveQAus1XYyUCPviEmxLdTZJOiVtEjgC
	 B7xhg1DprWU94ZTaa+UN/I/j84cGNQTJMa6/5n7qSHXM0vvp5Nv4fJHsfuyRwn/1Qg
	 VC55Z5v5gQmTSn6bSVYVZFCGb6pY3hxbOEvGCp+8wjVTkKPJuKgkj0lPNOUtG0Xi/+
	 B5+NtzvS1fjWNICGedliinsHtlwRnitJcLw9ruzPnf3RwHFwYRwlCRqUhZHc39TkTa
	 IoLOj6Yr2zg2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53922C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890305433.3884.7089546188118299985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37bcd5b7bb0917106d8e81a1566a293e87a2c133a235ab97036e9c42e29b13be
Date: Sun, 20 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668903054
