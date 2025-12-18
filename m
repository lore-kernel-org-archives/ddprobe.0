Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E063002B0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766027034; cv=none; b=JSvY6AfAC92uOeIZLuaQKrmKMWx/XhthS+gb8byhL6Trhsko0BSH+xRmSCWhZfghr9Gkr+E6qvxFQMy9Z5+yiimjpraxJki8yCTO5U/B7m01fjXt9qUvtDu+YkuFIQbk+JGPbrkf8TV+ytYGRfJUGen6YzXrts4fpwiZeib2jUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766027034; c=relaxed/simple;
	bh=HEm+ucvaYKhpk7tx5vXpT2bsMThjSHgV5Bl0NrAkT/8=;
	h=To:Subject:From:Message-Id:Date; b=U7+AugzfiCz7KRvHo40k5SYaMETxYiXoF97vUBE4hoCt/RCHQiETjxprHpoi2/9QbsxJx4m5emHQss4BckCDDodchGgGkcMfU3rCv5sumAWBVbkxSWxmjOQoIgjE2fsiOQc7k/oKoC4PQs0WBjno5Hjmp+XAmcWVKsf2WGsM51s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGuJk0L7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGuJk0L7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BAC116D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766027033;
	bh=HEm+ucvaYKhpk7tx5vXpT2bsMThjSHgV5Bl0NrAkT/8=;
	h=To:Subject:From:Date:From;
	b=VGuJk0L7Ak9nfe6zqTSdVnMgz3ofc8fsw17Kv2F8/9pC/++TfcDskYwn/SvQx2MCi
	 ErU9VaNieLBajnMvytgs8rNcmKdLyxqdhqTFRTOmRwXeNCnTKdL9n8SYnI0THQzO8L
	 TsJvXQEkdpqTLSWbZj+oBFDMbKraMnqcabgcyAhjWrIJcfZfaGTOZOxtsfAF9lil7f
	 bBTjZwA09PHAOqXxkvRDqtxtXBLyoO5lvUweJhkRCiom4Ke+3Iytx12bSwnHcWzW2J
	 SoE3IowAd9w2Qyuq1ZadPqs6TjVjc5Yg0eU7CiNKxzmVlHRc6BNCW5RH5oiFaCA01b
	 wknhxAzlGQoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F4D68BCC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602703357.13479.8099482535872552059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a78d212a2cf631db79bae56c7e5dda04c777cd484a3ea6742ebfae48491516
Date: Thu, 18 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766027033
