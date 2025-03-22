Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2E5186284
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742672395; cv=none; b=m7wo0wcjX5FYTEpXDBjd6QEFyI+8YXnEhSszUSKRFkoKZvJ9BqXI16NOjUczQVLH9CZvj67z9ACWcd4wp+3WmRcE/nfrFIipFnkmHGzOfX7y3sp5GFJeW0UDMxtK1uWX0QUK5vuLzCtUp36seko/OQT7Jn5w55vbh/UH0VL//TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742672395; c=relaxed/simple;
	bh=PWSjDrWSxiN3klrwredM1R87WE7ha0IfYcfjYsAPxK0=;
	h=To:Subject:From:Message-Id:Date; b=YKcTOEKhDUPcxwgbL6B+2qgYW3m4LiXbxR3B+a560CJS0gdyLy6feTK8Qx1IxcQqMeSrUzCiN9eCHHfbG2Ij2GUNTaJhOS43/UXkCCBrdw14Mm96/Fouyr5d8wIPBuRFPKH+5K2KNVFXdwwYYzQHwjGSRvPBG/Ahw1jX6pd3DR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xx2F+6qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xx2F+6qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B6C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742672393;
	bh=PWSjDrWSxiN3klrwredM1R87WE7ha0IfYcfjYsAPxK0=;
	h=To:Subject:From:Date:From;
	b=Xx2F+6qT2fMF4W+f8nxmn0NIxIlH5Q5z/fJrkrXCjN1VVJtmreREURUkywKkbE41w
	 8jNCAGpKbrP9GpdZBYqN/ePSNfGUhNerPBDv2ygTvrc7WAUogzM5iPkAZoiUNBYQaK
	 JQRB1vMH0OQ7AI5vl7phWkVxw4A3TXUtw+zutaIxbIPufVD6kfHkhMoJDyYwIRnzif
	 7nzm4Rx7d6eH2wQMXSR5NqqnYRXa6gyo851NCx65Jmyt+g4cx1a827mFx4SLKXrF3i
	 ABs1jA74CPw7VUOZaO6mVwHN581GKXzxHAKcL9buzvj3Cg8lVrL2p9pUl3mHhUcGsh
	 xbPzG+4NY2gnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F67C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267239358.27917.18276215368822939509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c05ed6ac067f9cc9193886eddf7ecf22de24c049a2626261f1d93b15cad9ee
Date: Sat, 22 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742672393
