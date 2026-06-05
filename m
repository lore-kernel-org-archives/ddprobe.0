Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ABE39098E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780701874; cv=none; b=kYaijLoQlz9zefvsaSizRa2EhRhCxBzEcN9x6NvW23ct1MM6pJOk00ziVhDuFC3Zxu5F8YvdsDMSFCr/Vv5aVpg3F0tDlqFD6Qbn9jjEoQeN6pVAUBlvZfTpGrLr9rRLiKK8+BimXuK2O99x+xU0IHZHkXYxwBm8AZ7jaUiBRZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780701874; c=relaxed/simple;
	bh=e4zNE+PTYM+OEz6qSG+hxQPTUlvc/+6/1EttkGssRyw=;
	h=To:Subject:From:Message-Id:Date; b=NK0bYnOX90Hch8RVPqF1HIOFI150nt0P6dXLk9DZf9dgmM2CcX1zOeVzdpVBy6mTCVed5h5CJEmLqylLSzurot+z3fdPfRSughcSZkYiAnrKCk0TuXskvWteInRB2TQA976f0F9gIacyAFIX0CGoJriz1sf/0Be0rC/LKSjoC9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ah7b3/pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ah7b3/pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79D8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780701873;
	bh=e4zNE+PTYM+OEz6qSG+hxQPTUlvc/+6/1EttkGssRyw=;
	h=To:Subject:From:Date:From;
	b=ah7b3/pFfQ5KvZi83r3O7qLB1gTAmJLTb/ZJSThq0VKhp4N+ofHyQoc9HsWVwm+Zd
	 q76/OoX21j/H9VvyQTFhH12Fsi90fPESg6JBR0kxTawx5AaYRGZIObgX8Y4LZnLyFc
	 /r1tpUxynCbK8NiRQ/8AjGt5ppTqaHkp8Vj9+gt2QtjobFFolusBg+t+AwGtM7kQ1i
	 4BmxwmgWaWfeMGUyqg1R9+zwy81N74r22vbAXeIyhX25jLQ6AyL+tlAsXfT4UwrMC+
	 O0TO6pODjI9Arx9p44nTzEl1pV2P6HKQsUmqA8+rU3/IMpXXj/sTDXkJeh74dleVXW
	 B3+pfZrXdZ2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEABCD6E7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070187368.20729.16038785151572670137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5995644e665d71657d55118607cc906069ec019f9d9d6a513ffb51adb2b5387e
Date: Fri, 05 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780701873
