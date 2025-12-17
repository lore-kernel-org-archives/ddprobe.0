Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35F35028D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966434; cv=none; b=I1iEMD4pHYJ8gmJ6BSRh5Jd+k1O/QLpLH6Z2fTXniS4AqROXswxjDAWNtSGcHKwG0CA4YbIs8mVpCZQdPu0mGzhK+qPLi5GQq/sNHjsKqn/TCp0qyBCe6OZfC8StEGeN9F+8xGf0nZSeOqeH6snYwlZ8FswGwSZtuDidt1g7wpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966434; c=relaxed/simple;
	bh=vYogl5XgrQ/+YMFIQtYzYw52nyNXyjTVMpPE23CcRf8=;
	h=To:Subject:From:Message-Id:Date; b=mV/6NtfU7+Mxh7ZOFeAaJOMPi9Z1LkWzHDpel9hDZewALYGGsJm6rLaNJ6lq7pdHL9CCk2Cyeo2pPmSYyuz4E8gNpKnbFLq+5lVzrbMz5oq0OT5Jpkxv6EYsNfj7rLJXBHCOYHDxKyAIepmHavhm20jDkbmODVWv1sX+KvLSJ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m++291qE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m++291qE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9021C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765966433;
	bh=vYogl5XgrQ/+YMFIQtYzYw52nyNXyjTVMpPE23CcRf8=;
	h=To:Subject:From:Date:From;
	b=m++291qExGQQRKRFP+ri69/J5NhSQrteDcaAaq0l5jgQ4StLvYMOkKX+3MwdFtQQh
	 G1/PnbIupgA+jHbPrEToGwS4TEgScap/6FiUcbH9ikPXIOjZnnFHBqjngZBYBOQV9p
	 zb+IDLWPbm5GS52Ukpj5fr/c6uWIwwBQDJJAv4EMJXBQqvGb9bZvauV+GkpDCYkQVW
	 Dk92FucgRi3vf4sTERB6wA+KqO+DZQQ2jQ3tPpEmE3h9o8AfV37vzirIscG0Ho0vo4
	 p94OcyE8aUuxkqpyxnKNDwGVT554OBiYtlTCtZ/nK4dccer5M7U4ACKfhYfD0yFjqA
	 d8oxhghbPIhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611CD65528
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596643360.22139.10244185590685367984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58842589286cf8bbe240ca7b5063119793afee52230b09912ed2bc56cfb4144e
Date: Wed, 17 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765966433
