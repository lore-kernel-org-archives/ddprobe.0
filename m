Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9201F3B83
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739034353; cv=none; b=uhLA2MrAd5JfFVC2HozsW2BU4OpPs4144E+PkLpfi0Iyv8cW0Gz/9N/dHBFgX26HZ9Nn+TiRxpc4wxqxXpOFZASJFYeFsMH6hYcwTYzFfHEGp4cDjT0iP22odL8CPCEeu3u0fgONTOc1nYAC58uudbeX+Kn9zIz2F3M4z7OoGeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739034353; c=relaxed/simple;
	bh=WeqTPeLr9Jm+OpL4Xk575WGFbfrPx8+jp9zWkY9RUig=;
	h=To:Subject:From:Message-Id:Date; b=e+RR23FL4u5W877i6peTJGYl9qabzfaAtbb2Vk/LYVVN/8BzM7ihEwStgj2aubOv3HjXruNpHFDKhixLEmUtt6x+YUe7dZuFqV1IKc4uKM4WVm3QFCRa3CM4ZuLRgxxBU/TEkc+JgGbfWJxFbyrP3TU99NrSZg5qUTTgHcTn4Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUbVx8dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUbVx8dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB89C4CEE2
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739034353;
	bh=WeqTPeLr9Jm+OpL4Xk575WGFbfrPx8+jp9zWkY9RUig=;
	h=To:Subject:From:Date:From;
	b=cUbVx8dwT3pWEGjbFWX6xiAHe6Sa3zN4UQM4oqTfj3UKCJ4NWuZhsT7b6tu0r1xLb
	 sXoAaXwW29DtKyYnTxmglA1+a0JLfif26o1QF1HRyDA/vtzKTqP78GN7jntiMf/Pv1
	 4pTAN02P8ISQbo4QpfajogQEKCTcMh/sPiKDtxHxxbIUdpMP07X3+V1E9WDnMnw/1m
	 gowEEGBdDfcxm6IvNOMviRExILx+pyWu2dfFD3Fo3Jo2pNptXTcr5BrMyBAsCF45i6
	 xAddOBlLVeERsP1QHyXtg4YIgTN9L/vJQNbWW95KdMo3puNcSwee6G0isjiUBrvdw3
	 XX+6zYSyBg2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96672C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903435360.18276.2905845017791702964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95ab745cad97a11ff86c269f73cc43a88c8097de0ecd3d12175b82eb0dfc347
Date: Sat, 08 Feb 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739034353
