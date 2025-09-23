Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34AA30C0FD
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758670793; cv=none; b=J5rgowOaC+qM72gy0bVvP0G76rpPAjNL1MeNP6F7VXKVMln5vDAGxC4vFxalbV4Py1VzVadxKvujWfI/GaScR/AuWNZDcdw8Q1kljAvc2vlkXq/vZc+zIJeve8wNJqlfjUlsBcqqYz7joO3XyxiE8pM1PjWzFlQBn/ThCN77uCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758670793; c=relaxed/simple;
	bh=2ETcXuhKQeseVqW6uyxd8B2xfdNdinuGpYvEk7vTGU8=;
	h=To:Subject:From:Message-Id:Date; b=mlI9Kt/HWa6lwGAaszVK7vc66Wbd8rZPSc0oY7tJrMzAqntgFui267iUjgEpqtxHb4iCYYVnUC0Sg9Bf/ZcW7C0EJsIvX2aOqwqIATSTEyX1sG4OiddZ9QK7o0gdIXz/5SPqzmBfmSjpsIwjfmH/G+6RhF1hXMA8hXNcEQ5L+zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVGZOu5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVGZOu5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758670793;
	bh=2ETcXuhKQeseVqW6uyxd8B2xfdNdinuGpYvEk7vTGU8=;
	h=To:Subject:From:Date:From;
	b=lVGZOu5Bod1SwOSIuB4kYhMIH3+noystttSi3ZGLt8Jct4jcjbaqFfRa+VVk/PvTX
	 XpGIXseq1ELSS8iP3dfJyRFIOlgzHTIbw9WoSJqe6oN5GpMIT7fIuuogCbRfSawaKH
	 bqEwE6uV2pn4AlEzUrn/XupxzsFrnQOvKgznzSNKIG+XagoKBav1opyFAYXgkigak2
	 H8NanNCjNGO5XA7489Q49lTX+7OiAz/7D9RoWrOb0uuotPeXtM0ersnjy6xmnHkhBr
	 bbVqoQ2qcqVfV1vesg1ckLSzSSY89JYEpLC/0I599HJzGtDrjOQo3Y3D6bvNkR1xpo
	 2vyM6xdCbT4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056FCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867079358.4988.14339661253175225851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8478c86a587b58886bfa39ce519f36d41dc6ecdee957d0f581054c478c64c68
Date: Tue, 23 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758670793
