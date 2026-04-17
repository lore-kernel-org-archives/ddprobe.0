Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439AA30AAD8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776469654; cv=none; b=WML9WSWWS2NP6A6wf0HKSLWWUKKLEMoeGgyBkiAOIRbqMuAVRAAX1OLYrBEP+3MCoTg+EK0stATnJJFT2oDAe3ZG6GpC7dReJZMNvb+sZ4vATocfdGiSBZRAnWJdla8u5KBVTEk0chEuG/dCvUptg9ichlDP8t/Qz8w8GtLdPGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776469654; c=relaxed/simple;
	bh=KTbH4iIB1FOmpa+3WyhMvFqLIJ9SjPo3gQ9ufj/WkW0=;
	h=To:Subject:From:Message-Id:Date; b=MGPwZK9XaICnlxg6J3NJGEH/090HEUCDOnUeaj5JoYFfNfrv46ZEWpQBJMxjHo3+ruRO4hfBjyPjmaAEB5OxDeH6dwZ3TZbmKGAiUHnGoBwzjd4QL+Tb+otrFN+XIEjSFL31cHsI/DN2ZMZh5gQWkbJjjbeAXAVyJQjC6mlpYnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sas0e/ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sas0e/ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3740C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776469653;
	bh=KTbH4iIB1FOmpa+3WyhMvFqLIJ9SjPo3gQ9ufj/WkW0=;
	h=To:Subject:From:Date:From;
	b=sas0e/igeeWLwMx7k53JhEFea10qIJWuVdnuvtR17PsxKSFiH41O4EqPRvkXL9mhx
	 4WoKeKFdbqspKgsbGV4jHE6vZYFxA82K17kJYVxSMrAUoENU+bZCJEhl4pK4VQA1KW
	 Kfmt11my4C1h1JWBTzrA8Cwzz5VLszQbpiEWKN8Y+uO1zkIxDy7gcHp7Haf55YX517
	 Ei+37/WTXvw2t3xbuFmeo14lWKl22g6kzLXPo8SuYdx3K8N8UVei8xBMjW7AC+A1PI
	 fcjEgY++w8B03BaDuZKp1ucssgMXzOw6RKLDDpEOVckEuYPzIh4BtyqJEgMIkVdL0h
	 FVB06tp72mL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9D0F99C63
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646965368.31264.12315891692138200046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586841ae616fd06bbd7e1a0fa9e9c3e31971c676425e92b2b34e952f896895f7
Date: Fri, 17 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776469653
