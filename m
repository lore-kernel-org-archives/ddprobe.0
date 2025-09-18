Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7B72D6E67
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758176393; cv=none; b=FRhMFl4MuKDLqrv38d5M+ZvebVdKysBzFb1QGJuZ7JHPbEycIf+Po9OMVWByoCoO42E++NUw36kwtmlIl1mJTVWfBfYabxZSzXgyjEw4hFv89oqUrA0eEMiaTA4+ru4lCDccFBKdCb63iMXmpDrhVJAVFrh5b5kk5YP7vxx41FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758176393; c=relaxed/simple;
	bh=Q9fcN0N0DpoRPC7zUbt++DW+ul7Cm/fS0etzP8Dhujc=;
	h=To:Subject:From:Message-Id:Date; b=VZYmegaDe0uXgWWAg9bxSBmj3Fno3G7vkuwVLJWmirbpUMEsXXPTu3dYMqN5QPL34dlExbcTGUl8KAF5zE3RSU1CvPIburmoZwKy1zk6gPSK0RWmNqJzddvjX3lkl/eR1+pHwlleo6vPdJot0psJ6+V+xmtjCZxL9h/H6sx/2Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRgpXF65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRgpXF65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6E2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758176393;
	bh=Q9fcN0N0DpoRPC7zUbt++DW+ul7Cm/fS0etzP8Dhujc=;
	h=To:Subject:From:Date:From;
	b=TRgpXF65eNRL11b5dnw2uWyaYFKXkI4mndVNUkZm/eIg+YuNkS+tZ+9jSg3Tlcjkb
	 1+T0qZfRvS5djXYG7w2oygxkS8o3uxHj7ACLCwIyBHMUbhP0N0rFxn0DWkbL4O1Ph3
	 dfQUz7PN9quoP2g9yuiJYLRKUqjtE2aRGQIxClqxWZQiT9q2E7nHZX3OYKGIh9s/vv
	 6R4jJ6G3e6Y1tbaOxGpPbdIXrBeQoGRtxmv09eaaBz384GXwlBvQd9TLFDGvdY/OcN
	 FAJrrR9I3Ct3QnTYUGvhZ/Don8efh3Wcx9eEj6UJqe8RixMkdZD50Wv1z/w2vf6RKQ
	 D1T2jo6jNfGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F850CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817639357.29696.12426703195771866575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bce660f80481a80ba561f50602869b2826b538b64bc48279a415315ef3d9678
Date: Thu, 18 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758176393
