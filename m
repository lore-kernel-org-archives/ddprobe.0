Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A8C883F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771743294; cv=none; b=FOEj/e/PEbHX9li/W24HXJZC2WEQaWnspvdoW0jYaD/fjUapwnoDfgN7R0rwoqSl/OQGq6PDH06EbMXbNDkHGoO3c+8BX3e3rteuNCnT+TKtbPOg4bIttrhSrfY53G5jJBwA0YfnJs1NmuhRpjX7enyHhlNM3rDKEh9sF5TQiws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771743294; c=relaxed/simple;
	bh=4HMRU0OG5gSFP1VNgi2f6vf5oobf1bdwufte0Gt1vEk=;
	h=To:Subject:From:Message-Id:Date; b=EOnyAXR99f8mxE5gerKOJOPzPIHoQmcrbcISbr9x1ch3V84Ja8ohC1sJbxZEjUM0n8omlCwIgbFHJxrObDo7zWcF7Uzg2/l8lt4nfxWWzz1+gFxDl0L+pwXV7UkZDOwBL1XGDG0GVvEt9dfpBmmV4D3IY64on9EeyFI/P/M0a48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOHjCBze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOHjCBze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B41C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771743293;
	bh=4HMRU0OG5gSFP1VNgi2f6vf5oobf1bdwufte0Gt1vEk=;
	h=To:Subject:From:Date:From;
	b=YOHjCBzeQ5p3gl/s1bEcyQQiiqRi8JdKAnRwNq+ZXNUWwwyvpVobepUze4tlyqwRR
	 /XPiKVB3T1piizDqSv6gFn2O+brp4E77O8BZqX6Gh5jp0rqxeqASm9hX+n+bFhO6Al
	 bYijJAc6R5o0CmTumg4kJAXCImbDo965XZqY272MIVyPThU6SyYJw2JCLa1cJCs+q8
	 Sc8usBLD6vcjy45ULC2W8aIPt/ycj9GkxUFbL6L0pONkVa8vsuDTuvo6W5YbpvuGmN
	 ZFJxzhbI9wf3Wg9Paidrsgd/8lNsZ9L4RyeZBwHBi2M+PGuHp+sxi/ywxWlFNaeZr2
	 rAme64PeFfnGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E4C624D1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174329358.9935.4744577527758041290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b951504664040a04e1f62399c6e55d21188965f7b4010603cb01ebeaf419e49d
Date: Sun, 22 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771743293
