Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08C31F3FD5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737070553; cv=none; b=ox/yn8HO68cX9OkGIm2iiH+Bwa1z23fA2mDZyEhirU2lZVVRRJh7ha79ru2B+Sw6mrif0M9Xd2xNtWbHQIJG+F9lC2E19bmNvscDVLJ/Zz9fa/4QepDqb8mRrOpZoIeqhQi7FhUUWZmN0Ppltnng5kXBcAdG+XD9c10VvLu4DRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737070553; c=relaxed/simple;
	bh=Bjz6ag+Yy9SaHr+C/+GipZwwTahKiXkojcXTWFz7iqk=;
	h=To:Subject:From:Message-Id:Date; b=lHzUatzgFcRP+PyKau/s99gZkjGbtOpF0JtKCysmXgZB8DQ1kJCKK+Fk0FLxJUycZ3fuDpJuNNM7DejX9wY3VehQlnIy/VwAhJPBkV9+aYvPhV5TwyKIeAMQidhqE1+imelvs2JrN6UQuy63DtSFG1xfHb3IV9L9m4d+pi5uYIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDtQqwyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDtQqwyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0569C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737070553;
	bh=Bjz6ag+Yy9SaHr+C/+GipZwwTahKiXkojcXTWFz7iqk=;
	h=To:Subject:From:Date:From;
	b=XDtQqwySSK5Vj514EiOK8ZZ+vNKFCPO8wzshjLXy46Pvbn+7efqirWwP9E9julhvO
	 28wc24JKjJCOA8b7QFenuXDYrQFWxKsoS4pF3BGjSLXf2NqJCD91SsZFJ6S31Jxo2T
	 ju0E2S0FdA5Vr5qlB7IEfZelUckKLYSG9LNGxE5rpQfG6eJMMmus95VUAn7rPae8hx
	 /jg5xdvq5RcS8f6IGP3L9Wq5YddM1ezABK9WYS5cxba34NMCStNbGnIThd/6wYSgfz
	 QLXbxxhaevub/IXKNwCYmZyFWdTZCwL1jwcOufDnXGdqHfU/fnrvaxQTWDgdZAJUl9
	 TzsGZRtJisGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065BC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707055358.31660.726244936481084087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9279889aae8263832cab216cae3893e04cb44ab7c3bee18b1238e742d2effb
Date: Thu, 16 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737070553
