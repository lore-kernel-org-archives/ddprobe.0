Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C643101C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736128554; cv=none; b=HFldTrf1QC6uLPhaA8AeV5+2T1B9KOjX2pofEYzbAKyy/haJ6nVWbdhup0LIUsV+JYkpVdASFhxw9y2xYBdBmQa2lRIhYtHFO7xIvMbSpCw8It+vclNfIMZ/r9fpassqox1DPQE6uUeMLPa8VC43uT1wmFdAEU+5HiTUFPECQ0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736128554; c=relaxed/simple;
	bh=HaHC8wTPJRgW+ffQZP9WyYKUMGVs6iGKQqDPh1SQc4E=;
	h=To:Subject:From:Message-Id:Date; b=mlZlIQPpnoVm5PYQuiuK2DigpexSiQNhS6XevcWeaB90zMMR+OFz5vmEHmHnZUKjhlcHJibg+FDRkZAGQP/+Zp/UXb48/OrOt5EfYrtOxBz6YjcNZOBOuakpzVTmxW8KjgMxSmDGEfiOFkPneRwVOvp4ghdCwiRt2tcN+PuKVYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjdV/utS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjdV/utS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F14CC4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736128553;
	bh=HaHC8wTPJRgW+ffQZP9WyYKUMGVs6iGKQqDPh1SQc4E=;
	h=To:Subject:From:Date:From;
	b=HjdV/utSCyO+3bOJ1F14XpF5DjQGRGwSZGK2LYHpA5tb2N07k73KrwUZgC3gtvakf
	 dZf6Nz+d0z7SdXiNUMRk2NpKEpy78s3SFr2nyHA4VyO6ZGZyNMGcvHXx1Z+JBJYJ1W
	 vtW1x272PIggFz/kot1u+M+NL15G+xzH5lK80C0h3T7PtzopdqnIBnDuy6NSCvhgxQ
	 tfY8FaNZAg+DvP4vy88FmxwItY+ak066wkb9YI39aecVZdRYTaC9HVIK9PuD1winvB
	 3MJMPxgRhvBhuBz359QEUzEbzqqZKz79ULkiUoswsD4pnTPwxYFJVtjKKkVFasz1Vy
	 3oECy6J2AB2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079FE77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612855357.15806.17622110810111987748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72748a77b664a570791cb52ea2917944a75a99f11245bc62ec9657bebfc470e
Date: Mon, 06 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736128553
