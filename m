Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B2317E46E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732092954; cv=none; b=E2KLaH9mhk8YJSr4ivRRvs3KIh/MdGHY3Spk1gpiBNtYqDhS+18PO2/+sxzECCfPF5uKdhU+OoDpYmszg4EWPkrC6asOp67fGJtJoC1jCf964LAcXCqZKEZ/77Ct9UElEZwdUqxS+XJoWcrbhTEn0P8VbUzRx7vt6w9t3o5y6aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732092954; c=relaxed/simple;
	bh=aOyCWwtEQnXCYs/Yhp9BZ3035E6H9BgvSgknBddZy5s=;
	h=To:Subject:From:Message-Id:Date; b=LZikyk24bwOGheDcH++FsMYWjn8sNMrD5gA7bOVxvR2WWvumN7Cbhouxu0CXfmZ67uB6FKZL0VoYnALSPKxx3Wo7/TLvf+f5+HWgC56tPB5br7b3qg0qhtVaHMoYSAL7NKQqIYha4R504T7vJH6rzc31lGZhSzHVpOpWfWjIW6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inyHORKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inyHORKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA318C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732092953;
	bh=aOyCWwtEQnXCYs/Yhp9BZ3035E6H9BgvSgknBddZy5s=;
	h=To:Subject:From:Date:From;
	b=inyHORKyQJNUR/ymvOb+0j6ooYbHstt7A1gs/WuJpsRZaSQpQmpgz70TXMS5DDTpl
	 dZ7xU+aRkJt96//MzHoU2dDrUKaUdVHDcY9lcLvoIguIm+pAH7B5RmkPplQBwt/KER
	 lv28rORJkovaTYnwSy6Ugq5+y8JkS3SnkzYi5N6b4g/9HjIGBZZmGwYIANxIGWFzTw
	 v5zy55Royg2KTzGOUm1/yzJUVnvArxTup3MqBUpz3Rc/MX9/vseK2XVQftcfK93Doq
	 hq7KcfAyN+GMIUu3rOG4F1w57s43SRSozKxn7edsMTgtaSztZBs7ATrBMmCrejy8aj
	 UoMuwFWwYN+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C014D6E2DD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209295359.6232.11974023432951781411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a4c8b411eb9b6620349da80552448018bf50156114613674f5d09e0f877aec
Date: Wed, 20 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732092953
