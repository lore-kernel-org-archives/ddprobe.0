Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A165129E93
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724709954; cv=none; b=C+K6dUv94hSrFC9Cn5AWuY4nP6SEFPdbdYpYv9VsrZrpBmKd2Rpy5uyfQwz1tS4uHHf5YAoHIjNiQfFz7CG8uc50nW9OKLnNH8Y+6QQsoWeGgbwWHqKIHfcY87kqr/6/aEiujT0flOmFwd0nm+NTyDRKTiFIn9llzXD9Qr/8H0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724709954; c=relaxed/simple;
	bh=Iyo+brB9brfm8F3IgUP+nltjDwNKa7xYKcpi0qfMWSA=;
	h=To:Subject:From:Message-Id:Date; b=ZEYsZMpX13HLSwPp/jG7QMYqL0AE6md6hUEOgLer6OyKdebZPNoqmXhj2OuxfJ8QTnQFyb1EU0Mtiq6SRSr8AsKivXD5bUg0H4uLVJAMl3wAJEb5uGNQfzxftQx5ieONVsRvJSPLCPCSBmkB3kQwGzCDRqErbrjQ3RmBOT2uYF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3Rk7oxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3Rk7oxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B2C8B7AB
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724709953;
	bh=Iyo+brB9brfm8F3IgUP+nltjDwNKa7xYKcpi0qfMWSA=;
	h=To:Subject:From:Date:From;
	b=j3Rk7oxPwpa5LQhhvOIhNDzzgJUQ49+eyOwHh0BxtYoL3ekUKPzHa8BY3QAZylyF5
	 XN8kOCCy1tzXxmQBsc2i2ae7NQ4cNzBXlRaqnNrwxSH1ujTZbFvNCLq2lGCNmGT20d
	 CF10WIm/SonZ6ml6xJf1bv/PtIX/36lBGPlsi3UyB0SakLOOn3etHgS692AKLc7Gey
	 YTY/1xN3k5RURX/jeok6ADsv2fmaEKSuNPKdu+f529yxN4TdTnJwojtin1IpoaYtD6
	 NI2hcoS6NLH0CBLT+tJLUX+8xsvcuc6iW0luyITTwyjFXRNHC6I3RxQgnA9yplsARK
	 Sxb5G/xA8d0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B912C5472C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470995362.5915.12660227997669034983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821984e0c230460999bc947c3504f7d3722c2f2ae313cc33fb132e61530ded83
Date: Mon, 26 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724709953
