Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3521D28D8C7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925994; cv=none; b=qhsqFxyWb2W4Jz1lsAutu6P2IzIprF/O51SonUQsIWBU9d61Tqk1fdMbUO+CNjLcaXA35rURK9ZNc6AMD+bIUYSd7aLMlUlZjfiLdg/EjniDvFw7h5tHa4rdUATcP9/7xDa44JnM7JdQ8hesAqMyKhssVCpL6z8uk/NDEk6H3ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925994; c=relaxed/simple;
	bh=Z3kc3XINcVHn6hl/3fLXIs78dbpu9bRmSlfuuP7RB/c=;
	h=To:Subject:From:Message-Id:Date; b=tUXqwAvwqIjaFN1NjZTgPODiU380tn+mAjFNmQ2C8BDH34dJzjan2bCUxuGT8W108bkqRPNZmPYinOZbD8myY7yIs/ABTd5qDv/UV32NUQPKhoksbst7/JLP3A39wQD4akf0hqW7PMDvYBhMesLby0XwlwBbsF3hICdYKC3L/+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVB2RZqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVB2RZqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747925993;
	bh=Z3kc3XINcVHn6hl/3fLXIs78dbpu9bRmSlfuuP7RB/c=;
	h=To:Subject:From:Date:From;
	b=LVB2RZqO9l2Feda61EgVB/PILdoX3Z3zl7/xSbop0aDwJG+4qDtcqZHi9O/CXxy/t
	 9rV3nVTL55zKYyDuTuocHlJtu2fBUC9F1O5Dmh0WkgoZeZ3vCXsam8bTZnDwTM0apc
	 KUSuvLdmGm7grqOfVAPTtsSQUT/zSUNVBbKDrSUQhSmSZvikIAyqZ0fsAovdiS3JTL
	 G1LlEQIGg2gkpym3eFSljj8ElHefFZFeThaWoeLImReR3s07YnFCc1p3YnRtQIRJI2
	 SPZUIMHwEDGXBS8uHXOpW7A+XsT0qZKiC2eZzhPE2Hzrr15UMrZcN+z+mF0E7SJrpn
	 +cqJTYVt4Lk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98BC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792599357.20934.10218921664869145673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27150a2cc147e5b11c9b784d5ab085287b99185da71a13914783097b97958324
Date: Thu, 22 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747925993
