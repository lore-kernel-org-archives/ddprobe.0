Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC6A22CBFD
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739866734; cv=none; b=PCJNOKP1ZliL6pNwoL5jTyceFlORjmop06lv1waBZ+SlIFFRy+jzDXC6Ldk1LvYaEWH+MYAzqYko1pZF23wUMDqcdMZox1DvrkZT/qbtrfGVDVHX1uPxsC6vO8TGf9ZEESbGz/3nuBHBkHxVR1KmBmJi4gK/OgL55yIqL4PF+j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739866734; c=relaxed/simple;
	bh=FbZIGtOL/lZxuYHU/uc1+PObGjK2xZOGrlAID1rQ234=;
	h=To:Subject:From:Message-Id:Date; b=JHDdE7Ihp1x1l/0xdr9M9Ionnb9UjHoNXH49NoVE0J0gcKhrKuO3g2P0tSAKHYAphECISyLu/fsZitB0LFeXJ59OAFcsr5XhaCFhpwp97dYAFYWeGDTl+DUhAAVqpeer6oPFDt4zPznDbe3D7yOg7F7/10nQfkDAGmt1JFaxl+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeR2hqvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeR2hqvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C5FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739866733;
	bh=FbZIGtOL/lZxuYHU/uc1+PObGjK2xZOGrlAID1rQ234=;
	h=To:Subject:From:Date:From;
	b=qeR2hqvcU4Y7bUGi5Mj+Co458m7EmBBFylKWUYND/0MTCBJ1+H3uYuNrPhwLrBPbW
	 5hiFAIOIJ4GZz/ExGP/gBxBk8qYR+F4Brle/S/GqeBF1bPf8G1Rkg6l7esHXgKBsus
	 ts7rFis1sUls0fnnMV4Nsc2v9OBl3E3506G9JQ205ZqjRU2ALCq5l6ynCjvQM2NvdQ
	 xb2n9XOVw/5vtnCThhcFWp6uKIVk6qQdkiP8tKI6+2cORN4qI2hHi5wuIaj44PqIHo
	 bKGAZU5Jc5hl4EiBPHC64my9mkyZrYLL9W11eSCTkFzrCSbXb7M1jcRR2GgAVzE3eX
	 9oKYfmkqQzU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD620C021AD
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173986673363.31134.6102784937213300316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3ede476b5b90639aed494665a94c9db60ab62667027b5363fd1e774d09b568
Date: Tue, 18 Feb 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739866733
