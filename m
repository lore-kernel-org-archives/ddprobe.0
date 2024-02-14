Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28E12574B
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707953896; cv=none; b=HhJUc8jHcWuZWPpGKYPqo2tk9+Icy7pam06EJie18C4/FJ7v6doctl9uOeMNXUvO0V8scPmBq2QdOkmm7I8RxCaTIU7Yh5Srt6i1Vdi4Ki1zEsMzBku58ZQrsw44zLZgIUG81PaGs7dE9dOSe6OhoqRyQ/yInVqHJ3JmdJiA+5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707953896; c=relaxed/simple;
	bh=bOioQjtjGTCVzUKA77zqhrFE76WlTi2qjmP6ldqZKOc=;
	h=To:Subject:From:Message-Id:Date; b=G615EmgowoQiQpLz5wxUxjef5PwwB3Wx2SqriRnqYpkzcg7OghgRWRbP30sLq05krpqMhh4hEj9xCiN3HD8KFBu5C2zc+wgG1sHSlta79PwqJJOiwkPNVWb+StIfFE1RrQwFl3sNGyVLOi4JD6iUq2VF8m/3qhRVIegmJKZa4tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2aa6YWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2aa6YWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FD0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707953896;
	bh=bOioQjtjGTCVzUKA77zqhrFE76WlTi2qjmP6ldqZKOc=;
	h=To:Subject:From:Date:From;
	b=N2aa6YWhYVxfQWQgcKqMucVrvf5r0JJxFa1KAVKk2K3tjmpd4ve8C6iSfF+pcdudA
	 pI09MSSPd0wfDoVSeZFFNwT9ydNjS9y1rNtlZHbQFiS9dYnMoVcHV3JYqWL5Djs5f4
	 mHvEY7cFEg+ynKtDqlK87H+KNVCm1MxuMG/sKWm5Hsobc/j5QAEGrETjJ2u+MxOvr0
	 1iU+3AgPKz8bbTMytq1bXSBbVnemt1qCjL0Sdp1asR1+ylkntqojHKJuWPqLrYCc2x
	 qG33Rwa6WyUwEpzaEzqQagjBU3agea/uy7wP9so91qX92AlXRuT986oHV/q74vxPXG
	 HFKwb3rvffmhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD68C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170795389637.904.15180796315212790297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8ab61c9a625a21b1ff4b346206bae7c28faba5802259cab3f142a99846cf60
Date: Wed, 14 Feb 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707953896
