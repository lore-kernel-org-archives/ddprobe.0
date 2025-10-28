Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845D033DED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761664794; cv=none; b=DpydBxjtKDwlpcV6kB0MD28vBLxhjZOCjL48pGC00poSngftyYmkLdacTPwLHp8J5ExLQCy1+LC6ZAIoW6LSBnJW57O80nKfavF+4OdaUmppM9+M29WzIfH9q9pCx9Q54Z+BxtlnwY9oLqYxG3ETj9aqGFWr1l9W9wM6f21wS54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761664794; c=relaxed/simple;
	bh=vi+SfZ+9XANrwPaC3WsVi9Tu/fNP87Hb9RJfFDQIoqA=;
	h=To:Subject:From:Message-Id:Date; b=m8EUTiMqNWUMA0TeaOEBMVuCinYnc6ZmBL79j4A1G+BlhIeBQWKi7dzL6tA/rydrCMZ/wtuKRZl3AET2lC6jAFeIoTcEHRRLdRA0xKgwdXYQU5DANQbidycRhdKehEKs+xlOPLR/19FE+Sr+0ctpKOWHL6flURMvRFdOZwJOGL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf3wxUHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf3wxUHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCBBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761664793;
	bh=vi+SfZ+9XANrwPaC3WsVi9Tu/fNP87Hb9RJfFDQIoqA=;
	h=To:Subject:From:Date:From;
	b=uf3wxUHhZhv9V7FHNY0u6R9B8ZG72W1A9NKDBRnYZsFIQ0UMMyiGkrfQZ4UQ7kZ+V
	 wz//rJR+Sc1IDJ16Pb+7kL19boKXLPj4KAT8v/VMCXtxQnBocehKeDXzo56Y01wXn6
	 vc5/0y5bDKjMXeCy8N1xJrH2r6p+pcvdB8eeheYrwjK80BjfFMClZylBbGSoWLEHZb
	 AguL4ddJr+hz/tqhUgVlRqfu4y1Df1nYSFDUlPq/G0sfreIz7UKvFDVwbU+l0k7EGe
	 e5O6nS7cdq7hFC3mICp0JGOXrJwqLav03kdtxbzZ2Z1mj803lvh5rYia6+HSjU5C1c
	 2kVuBZIAvsEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE3CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166479358.7168.6688342110006045959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e92a51995b3467f23971474a15d07095354cf6693dc01ae560d553638946b67
Date: Tue, 28 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761664793
