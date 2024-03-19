Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79B74C90
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710811697; cv=none; b=XLLkh+NiP2Q5Ie6aBVaZIoVDDGsQtzheCHiVLjbbEWuuiYFu0lOEz4yz3qUJeCtd2irgLUHb4Z5f3wKHruWoG8O2D7XB/4lmAy2gy+i4J+3s/1ryJ7kYhZS7HwbcCjDLb7OxjuN/N+ntdtD38v093vCXAlMYeiYqY2+2c3bw9xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710811697; c=relaxed/simple;
	bh=4mH6QaKpurDcOj0TF240K9i1HrZNs/7hgqMd2R6Omk4=;
	h=To:Subject:From:Message-Id:Date; b=fsbIyuVw8tfHvh2XhMHzZbFRpaxnJGaOZvvhqvaHsrMFOwXEu4Op/MkDGQ7FLDLzz13cMoNkp3cP3TfB0hRn3A8HkveBp9JZLv4RhIukBlQvS3D6M8w8o46Ngw1zefs3Dse5GuyTa2WZ31GkU96xohfXpVPZO3sW4ONSzFoOEmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfmQle4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfmQle4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D1FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710811696;
	bh=4mH6QaKpurDcOj0TF240K9i1HrZNs/7hgqMd2R6Omk4=;
	h=To:Subject:From:Date:From;
	b=NfmQle4x0/seuy5QgVYYhaqZp+PyN0dVtfHYo1A8qCN704crmsf+ObdM+YZBqbcce
	 +5Urt5dxkUT3qdF/vRAIj/V3LSRGH7fNRRgKpIm9X3xTt7ZTa1sXAApPXoIT4ZXVCt
	 DZ6qW02yiuMgHXjPQtLoYszmrUxwTG/pxyDNq7TTEs6pfazo+DVTXRQxs+ZpmrXTWx
	 aW61OYm/YbX1SEoHCvx62KSUp3ICbCm5FK6yNky6cpgJ0i0Pa6WDdO669m++BVmJ8v
	 MRyCmrndszOw/pSXPXaRED3X2dpfEW/cuYkBVxKicUjiuFe+KSiAE17UETfbaNUafS
	 oGxZrcUvO1QMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F98C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171081169637.18683.13855882145959533462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8e66b9bcaa84a4829010ac70c73470c01f8d7445d750651038aaf7eeb9d745
Date: Tue, 19 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710811696
