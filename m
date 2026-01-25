Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CAE2FF148
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769370834; cv=none; b=eT+K0lGHfuth+J7/G1mkiIMVD2hTh1MlSY7uRJ8Ts+wgR0jbN5nQZGdB8xhom9OBBazD4iwnmVgJOHVXvjKxiYVZtUtOGbmaWfrQf3QJwgA46fUBy0/RwYOZPL5twweHJauInsXwNwXSGqMWMcxVmuCD7bfkCpwQysnfPJaNy3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769370834; c=relaxed/simple;
	bh=1Du5r6ynw/GYB8onKNs+DPxGeMLYeaisHZGy4u2dlwE=;
	h=To:Subject:From:Message-Id:Date; b=dtHc5COKPC8OJVZYfrJWnZLSHxzJmj0x+cFe4GK07V2zmzlnhdjbWjYSQDEUZF8J3RVfNDhJH5bQEvC2JJVo0xljwcxyVQ5qa9eHdpyJ0mYFRu4FC6VCpD0LQSr27hxn1vyN0HpVbDSxu7LcvF6rDo3vYfjeJp5kX85QK65TCBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qABxzzt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qABxzzt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9F0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769370833;
	bh=1Du5r6ynw/GYB8onKNs+DPxGeMLYeaisHZGy4u2dlwE=;
	h=To:Subject:From:Date:From;
	b=qABxzzt3eRzI12CqL2TW+z/tyn+JpclE7GrkDMeMwO5Nsz+b7qk2Sr4SLQFSEzAS9
	 fgogZrnvUxDMq1EMxHoLDOU4B48S3EGZmQx4fwgNGdVYL5nj7Cum0gIpKSsEU6IXf5
	 wbBQmcTBdsf9w3NZyB/TX7qNbrsk0csY+QlYaFTyhYi5JCCFrqJQU16uuFNKAl/4MU
	 e37KOzQ/iftMl+mPxSAIzjxYPvPRTHjhrE937KAAUbHc7nTEAAaHffdo6oA2FPTXRZ
	 eupy+xreYhR8DAn68n3QieX57jUVfHgABuDI3xPwGAOb+CXRkMFsU9KQjPeyk9a9pf
	 rCPU2peBmFwUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959EEE63CBF
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937083358.14566.17589066457639402769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0216f9b042b717ea9118d6f50db1de6c9a38a84209221358eb6542b703f5db37
Date: Sun, 25 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769370833
