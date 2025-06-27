Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D412BAF9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750997394; cv=none; b=B/NKGSt5nj4//rremj62ITcz+q9Udsq3PJJVy25z3alQb1TjEeRnHu7uAKL8E+qk9tRkKcV1QjuwGuc0jlTWr3csF8lruf8SUUT6dDBmYXIe0dsYmIO0ADSCNRm2S7YNxoL8giEUTqUGkZDE7v6nAQeEoTfIBxDxrHgsR64EKuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750997394; c=relaxed/simple;
	bh=7QQoiWH8kx+/s6mjQqU0ONNdRUqJiQztEy0rpkf4spw=;
	h=To:Subject:From:Message-Id:Date; b=Y4OkCDvKhXaKecIPPx1qol7rYwU4NAHzTw3xvb8WdjzVL7XpsVxBFy8j5o/Ue0nCYRYYP3B9OhUiisVep9JyWgjqriOe2ZsOssrPuq6M1h9i8eX+btbHjxz+bZOckl7x1CUwQTsIxygQffM05YWATxSmmvZMqzxEzS5lFn5aeuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYJ6FhSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYJ6FhSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A934AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750997393;
	bh=7QQoiWH8kx+/s6mjQqU0ONNdRUqJiQztEy0rpkf4spw=;
	h=To:Subject:From:Date:From;
	b=LYJ6FhSBqUcIClfhU0ylLojNXmC5synncmrHaAdZQjqV8jC+K7cop6ED+Auk6uoAs
	 ZaMLNCENFprrGp3KlBciDVwW9FcvlZEvO/DwI1DMVUwWgwkQb4xTLU4/cYJXdC/hI3
	 o32C5lYztgxcx+MRNxr5aDFiJU3jFjV/xngejL2+RtBH1olDCtK2E7HxUu/H/1/hDf
	 ctjYStCZDBXJBFBgczaZs6xOXtos6nm9Ue1//F9VVybmEmCNd6wTOQq7UxFSZBpbOj
	 FbmDQk3QVQ5kJk8HUB+mvvbhmNcv1ixG3IqBAHeRsETai3ja8KZ6ed/kM8k/PR39+J
	 QulykeUsME1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DBC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099739357.20064.17145260272397799980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec77425d85c151cffadc8b23a1ba09290457bafed56de2c2ec3f4ebbc83dbd6
Date: Fri, 27 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750997393
