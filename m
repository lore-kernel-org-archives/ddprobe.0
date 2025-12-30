Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2C72264C0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095633; cv=none; b=mpbqAWIf2fqAuXZUlfP/wCHx3zDZMy+1fP6Vt6/0HlTiaYq6yrNBjnXwiBBYkU7zt8y6ZMSHaLscqghSoilxSxh+1OE4Q1K20ii5htnZMTmdUghwLf/JLjxQdj2SkAH+lnVeCdz6Kd8WzqV7tVKZPRyrbXXifCPhP5djy3DMl7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095633; c=relaxed/simple;
	bh=U/zqR2pv7sSbDnjRzdxhRyyw5d0oTFUMTBqPdpwN+Ic=;
	h=To:Subject:From:Message-Id:Date; b=mO/GDYaJ20s8m2DKL/NrkWt6YMVNXh0SrGkLwQg70Jx1hUMP1LN1MLgrR4oMr+feOj/SQHeoMtxdWINPgN6anfRziDi5e7O8BZbR6+MuU8v4lI0Sir5hOy567zzjrHxR/n7grDom0ApsGY4529AxpnyTviPvde31ZYkuhuWUIAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjsZFPF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjsZFPF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4132C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767095633;
	bh=U/zqR2pv7sSbDnjRzdxhRyyw5d0oTFUMTBqPdpwN+Ic=;
	h=To:Subject:From:Date:From;
	b=ZjsZFPF48GaYjDx7lpsVAm37k9LhzRET7T595SWtdy5ZYURn8HCUMJqum1McvOOcm
	 V1fPL5padK5dy9eruCBzOJ/EWMpJZtAvVeDSBNknYCwBlQh6+JYOHzMiCBOFLt/lip
	 3bQY7rUlT0GSUgtn4FknxAm3Ig5WzP0/csw0g8B+YBh4+ZTr0XMg/IUECHO9/eRrzX
	 wrIPPUScCtzY0idLnEHBMZfQWZlh5aoBejOIWfiXN7CVBsuCdbxefCm31M+Hax7WFE
	 zDXr+tThjACqc+dvuZYzYy6dBbzfZ5cZivvFRe6GZr9qxh8wBTGIIJm0P5UBHDUKxK
	 0OCATGUI2RbUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94422E95A79
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709563357.22747.7866787607289515545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21faf51a6cf88bee1bd1c9dc147099e1cde081ebd86189047669f8013af14754
Date: Tue, 30 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767095633
