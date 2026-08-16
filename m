Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1093382F4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786909834; cv=none; b=XWYPVRSOm/IcoPB9lkjKbcyaZH9B8zJhOfWbw8iO+aTKfLa4PEZjghsAiiguAONQE+uF6wAgw6iPE3MhItmATNg9vSr0uRXnvIH76Y0GPeEmuU8YTRp0aRI6zt6oHLvgWqhB3EWmfN0s7JJw77YTa2e3/f35QzLMB9Wqv8gusnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786909834; c=relaxed/simple;
	bh=+HT+heXTK01RA+35KuFy+btfSfmJNUY2gTzGvai2K7g=;
	h=To:Subject:From:Message-Id:Date; b=IywdC9gCcg9UJlkSf61YvS75TF3Y0sXsGXo+GtrkGuFAzD2zylSy7KQAHzalNCgTa829KykeixdF7PVklOtHaPuZXmujQ2AkeQgE1XG/9OpGR0ZupCjHrjh74StlMI3aZPUkUrVZ5//tUTXzWL+uDsjnaDSkHsovT1RBXhAC7kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqsQhjI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqsQhjI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB32BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786909833;
	bh=+HT+heXTK01RA+35KuFy+btfSfmJNUY2gTzGvai2K7g=;
	h=To:Subject:From:Date:From;
	b=ZqsQhjI7iIFhqa+feajvzZvgnZiOa/nlkj7iv2ElhgSfLysnvnxbRmxmvFT09e7IS
	 fTpXIMUfDs7CWQ1tMyCDVJiVza5FhqWxDOfw1XhMHiCLAOkNxJR4xlDyEtRvKiuuK1
	 +Q+HPj6fQuUgNrU/V5qFGu9+6ZkUsQ2wOvrflH7+mJUDvSg98BfqfM/bIrhbWSxLPZ
	 b++vMnploZ/yS7i+jwSPaUA60EORTVqnHB0ioRCQugneRdhyUaLNw3ZAd1Xwild1z9
	 CzE1sKD9pXAPQVPUC9XrK9IUTrGpNOOkiwRWYUZ/Cn1gD7X6uMPGX9yYU9Lw3scLgd
	 RpuD0ZTbKuftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C1EC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690983369.9441.3118282924733822981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe2f95bbf01ed48c64f49d8732176d9ba5bd953e1fbf475edb252782f2ca1f7
Date: Sun, 16 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786909833
