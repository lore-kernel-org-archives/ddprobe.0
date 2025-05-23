Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ACA220698
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748013594; cv=none; b=msueYqUtLL/bqBhHMBO91MM5Q+x/lFyMABppsmUGwfAwrYZOf9Dh5iurqt6u7qvd4hlcawx2k9EiOAddJcyLDDMg8gMyR9ecfa7LLgyAuB4k8A1OVRV9hjtIOwrvhXvQPy5qcYJp3yshFxcLDh9zbcYE5Z2hc7vxKOFZPA2an+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748013594; c=relaxed/simple;
	bh=UNP9TKl2fhW6Cwlg7LR+6ckbL8sJJUBf2l+2iA17RvQ=;
	h=To:Subject:From:Message-Id:Date; b=V22g4C4fQL7BHWG4I9AYu9mn0bfiEwpYWrvIu6niCvdtWqsaAOXKzDP9Xk3zoDLiKf0cPDUq1mGhzqlFx1WucedZ4Y9ExLcwU4BL6b6awy4jxnFmFkvbSd6j6Xajbxv4WBOOhc4wUucSwm0jVAja26i/ofhkmntOYiKKLKQ6ASY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upruZJ2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upruZJ2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4189C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748013593;
	bh=UNP9TKl2fhW6Cwlg7LR+6ckbL8sJJUBf2l+2iA17RvQ=;
	h=To:Subject:From:Date:From;
	b=upruZJ2BTxDRwep/EaExersem1i6BzwVUYpzfXjZt2kbkabaXgofeWkDAB4nOgwhS
	 l8L/JBgYN5SDi+R9uIIL0dFZTkR2L5AU8dIY521xlb9i57IqY3tf+cWaTeAipao4/u
	 RW+Na7Bzg5yAEWljFfyqCxENPWw67v/Eknc6S99GfI6/CiDvXMNiJr7KoZ/zd5VxGi
	 Xbyfh3AjeHc4aOrTTKMNJG1sA5gRH4AA7kTT0JvKgTUyrGfw+3Ax6GGKVw6F7jHD0t
	 WcLfR+rSexPFm0CLDQ7u/a66dj0XH0OtVW4pBLJC30DRuPtle2BhpRvEPMR9dOTUOW
	 CVfwzJJCY6ZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D31C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801359358.10440.6193131867891402247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93319d1805b39dee1a8750b2ddfb238347ecacc8afc5fd48e7cfe0d44a80b63c
Date: Fri, 23 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748013593
