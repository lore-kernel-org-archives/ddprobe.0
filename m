Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272423D81
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730841354; cv=none; b=YjhpDFkh3mzApRAGM97cwSs/KDk/Z1kdTEhAk9PDOnXIttN32ApKoCp6Ucg1wD1vyxnIphHLva3fUL7WlJWwVqnbwtjU+aa8WpyoTZ1K6xWdkLbgl0yGeKM5zIOl9xpfdJX+V+oS/ZO+6Se9ZeaMZuNhB/+x+hXkjjudsCPRo0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730841354; c=relaxed/simple;
	bh=JFg9vizign7SOx/lfQwpf7t+hgSdMsxhz0LQw3hL5yo=;
	h=To:Subject:From:Message-Id:Date; b=msDnIDADTRB3nwH9G4bMz6oKgI5qpSQRQXNUsGctiY97+njXcmKukr0GWXu8a9B/Ggv2RVu/4fCbhW4IroFMnotmXAwFwyXEEoncZaWJHVUqXZpMI5lWCTfdF/SOfIZYUCNl4wcq1tNnb8ewLM9gds3VzkFUQ7IrnTlLSlJkKM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wk5/GsWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wk5/GsWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B48C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730841353;
	bh=JFg9vizign7SOx/lfQwpf7t+hgSdMsxhz0LQw3hL5yo=;
	h=To:Subject:From:Date:From;
	b=Wk5/GsWjEXQwfjHUd6L2laK49e/JT3QQ3GPM1rdHN3S+/c8gydl4YcJiR0Kle8rGo
	 CwgXo8z265t7zjCQFH4vHY3de/Br9rZ1yrUF0NdTVvddIwHM7w8pbHntCsG5fQ7phb
	 EaLcuwmZ2vLyBAvbqsyJOPkUDtrFzwuGnbu46WJ2CC/Ic3Gn3yn9w0XfMbJdJ+dUWF
	 eBHMpy/OhfaiZulXeastFz2KZaK6ZWv+jQqbOUxpQlgl1/cez7S5SYErq0JonVybEH
	 Alicog9A6yIarrIw94EHpa8lXxGLtZJSRHO4lQfW2J95F7Ywl0BkvERZDwh/iHhjos
	 U0V+9CPWt1GBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D28D3E772
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084135358.11256.13095158229943639390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f538f0eccf4c2ced4a598c2aae9621efaf6bba5b039cdb5ca9fbb352ed7c665
Date: Tue, 05 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730841353
