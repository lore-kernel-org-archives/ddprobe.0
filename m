Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343B194A44
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748083795; cv=none; b=EV61Le+9PiZvsnjAEW+xj7SZ35bEEsboKqeIkIXALuIWJSdaSB65I3LClgSQrGlH5fGGcTYBgFRtZoG35mZxK/eJmqBPC7kWx5kUncg9BNgDy8wTana1FVCp36lNXdtBZcLqiYX9eUHbqFsLrZmG8ga48n23T5428a6y7uHGioY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748083795; c=relaxed/simple;
	bh=IdrJFV7z9WXy14eCMgqCxQFBWC8GfHrfSNDAuEoNRgY=;
	h=To:Subject:From:Message-Id:Date; b=YlYO5MHqfs1641+NQjKp/RdDzDd9ujPw4dlOctAdjN0JWZn2vUelJ12g+j8sNUHsO8WaeVUrnWmtRYeGRJOsredZscIjrurFSxQEvAhfbvnfMlx5nTG9v6ovavZ6g85Xkh1I7n41l8kQOXs3ln2hylA+wBufWmKphv8b2+0tM+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqOA+1js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqOA+1js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654BC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748083793;
	bh=IdrJFV7z9WXy14eCMgqCxQFBWC8GfHrfSNDAuEoNRgY=;
	h=To:Subject:From:Date:From;
	b=VqOA+1jsr5LLcYqpZBROlzvAC0RlO/f4xbKJzMr5JnrR/gDHHhEkfN4iIOtLClS2F
	 ccaLHnhmVBpCsUHCis6lW+hHUIedxkHoLhGKx3jQcgybytYlKAhVA+ul+Rztpe6DFv
	 iTsnZ+7GFAgPE0iapGnMMJ13xukhN7d9kwuL+bnmTbKQmcnTxsWRwtA9UGpIkCzGMi
	 JwC+UjkdeZtGG2hHF55wvhV8dkfFvr0xLb5h4QBvB2yDXRa++HMKhNdBjtTcPkzIUb
	 wWyv0qne9DIkOaUXTnMI9MpXTTrxB+oW5WerthOVsIV94UY8dUTNdqfE5sagF3VxqC
	 rgCJlgHh/JtCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC8C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808379357.8266.17201428765233966926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a7facc12b9894e67898a0f1def42e24480ae3aa81ccefb3a698f2bb0784cb3
Date: Sat, 24 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748083793
