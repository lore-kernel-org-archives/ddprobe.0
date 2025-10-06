Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB6317B505
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759715994; cv=none; b=oqlA+bQnNwUwHTZZ/KoIqs7cCXlzu8emuBHoVP9aGKFrkAeV7FTXH4F/uPJ4YKlLJsUFm1y0jGc0L9L0taudRBZ31POpk4SWvEIIexQDYXFpUmAV71NJ+V6KayzE2zUeCAbSDe8QY6xqUNdmICirSp4tK+Rvg9HflvknCR7hd3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759715994; c=relaxed/simple;
	bh=4YKNqBL+5RhgGWmPlN6gP3jOFhA5aNe1fvtAajJAd8g=;
	h=To:Subject:From:Message-Id:Date; b=Wsz2UkaBf9DkMhL4RJ75sLpfI67tE3ZLl+pgZBYEBuQr8BmH0lWvQLqyMuudQQ8fDv4CTfqvNwqAJYefjTwgLgficxuXdJ981VgAdYGcTnTnmlRqDXT9/eJgZtjJNYB9NWzAjAdhPp24Kma1lO7NKEOydpQ9m+pcRfZGOS1sirE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClE+RcwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClE+RcwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759715993;
	bh=4YKNqBL+5RhgGWmPlN6gP3jOFhA5aNe1fvtAajJAd8g=;
	h=To:Subject:From:Date:From;
	b=ClE+RcwKAwCKddxDaPtzQrwO0TB6RZCh1Vn4JrLkmKXInxHCGZkuGB/HEevOlBOgO
	 IbfWjZdeIrZ9FSO/jrlKud2px8j+ysnBshERexPTsKsZi6crMoRha2+c6OOiwrGuEU
	 725h5UqyPlE+M2lSQJizO5i9xJxqD3mqs30msBUwTG6XEbeQLvpmC2BFI/pJykDEv7
	 El1jWTfnHBwNEunQkcgqrxkd3be0Jt4LIV6cK/ACgev5RjgBW+ihGNDzBorFwvSdOd
	 f5RgpMWa+cYp/l74WdekXCJolSnXbKOxkCFkvdQrWeWyOFQr8kmAc2hd5h5tBYzctG
	 xBIDf5JXDZdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D08CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971599357.14206.502858097201216002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf34f0f4540872714e38ed786ff0187b8ceab426f319546db8ea207d89ff9be8
Date: Mon, 06 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759715993
