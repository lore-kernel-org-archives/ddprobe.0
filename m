Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FB510E6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732680954; cv=none; b=VdPxnBUKxYiySI6jtg9cUcALWGjDg0Xh1QldHM9t39mDJw86GHX9RK3SnXfBaBmWxVX2tr99MIzekW+AMdXUrTiMvRXzqp02nBxnOwViB4V38JgfhdpHuFBFIgjMxJ1ougIi50q13BPOYQ3mF0l9z/06J424SMZZfmGLwJXyt6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732680954; c=relaxed/simple;
	bh=jKmQKzvS4hBPjGhG413D4XptIPYQ6G+5MXz+VD88CD0=;
	h=To:Subject:From:Message-Id:Date; b=NzKX7usTi/rGmi4YHiW7BcdBvBG2bkktJfZ1WLbfddnNUkDIqMI9sleLxEVtBRWowl9k4t9emKRQcRYynpWHpj+86Tk/JkFBMQHAq1+sXxAelSk0OM4m1/+I5Xi68+ZmglVsY+BNP67Sn3iACoI5JmYzxI2dzXVUur+g5kmjUOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePpeVP1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePpeVP1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB34DC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732680954;
	bh=jKmQKzvS4hBPjGhG413D4XptIPYQ6G+5MXz+VD88CD0=;
	h=To:Subject:From:Date:From;
	b=ePpeVP1XU0UzWe4F0t3pwpK49kk2QpsC71/eu3GJ6HOhiNirL++me01WWrObqO/gh
	 llBMlWKPzAhvOza6ORK83l+9YPjeZMBt43C/n65VIRoGNO8+hwap2XOV6CcnpDfsi7
	 cwDQSTriXk2enDgMGUCSt/XUF+PjV50Tp3VqLZdxGDWv3CJ1SEFSBOeiqnRTpMniKo
	 moFIfC6H84qr6r1YJe0eno5E5Z0g3WzYtgY2bN9PUe+CU2EGFLW8x7rfLWdTYuY11F
	 krmJ2QHokA9CK2tzDgGO4Qh2aL7iCc5VjZp5zah5Lu4QH51zJVcXUgqGDkdXqtVNO4
	 +Zo8Gi9+LhOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45B5D3B9BE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268095369.12795.7635729381592267765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04e16af4944dc8169c11ab5f09fbb2ad3bf13c727e19699b7636ee3eed82cc6
Date: Wed, 27 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732680953
