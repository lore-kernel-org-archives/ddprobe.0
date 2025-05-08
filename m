Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5544B1E6E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746719394; cv=none; b=eTQw8a6Y1B0pRavtiZBW+JAHRJXYpL5zWUR1QKboz4Z7/9Ytd36tfwHVmasn5QlrKfQO6gEx9QJN4+fAcglZWT/SospohQAd1ooxulZGOXW0mT7a0MRCKwXvtupWhudLYA3LsebUrJCsOVow4VHY4AMJuKrWVAisYUcxWrSEsnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746719394; c=relaxed/simple;
	bh=EpRxW78mPw3hGengyUXTZALd8GmhkKwd9kkICXbZ4s4=;
	h=To:Subject:From:Message-Id:Date; b=f4w1bHFIOkOkmj21SACMuMCnPXjTbcQJEFnUKEIRsvvfDvl49Rri/JluaD65IlEz+84XqfAVVykTm52EfT7MAuMU5HP6QtaftFeZciXRD4n+6X3G7rXEpJgooUvLgf7QmhF79+GdwBaA9jMypp0/O6K0yi0Y0AC/dA+oPdsNptU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5E0HX+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5E0HX+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F516C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746719393;
	bh=EpRxW78mPw3hGengyUXTZALd8GmhkKwd9kkICXbZ4s4=;
	h=To:Subject:From:Date:From;
	b=T5E0HX+kzsJ43fWy5xVsPnb1oh1gBVIdCczw7aCPHvNBBAWdlgJ+op6BitOruLmbB
	 7ejLCr7YQ9MGxOPKqKt7sjKMwFlhmjTrOsZnaV4UcaBKPvZjy5JZAibzYH8VZJkcJs
	 iwwIESMsmkniJdnlG2dvcKjOREZOJnXzHgzrAXRFE2G5X7MH04QCd3GwTCHnHUWGtg
	 m6j2+RzNlkHVm5a59PN0xTnzoSZDuxcp72VEYW68I4O3t2kGg6V4s7gLkYmk5jf7+K
	 G+tKp7Pz2WQHvp7I4dIZ9qD3QAxxRVqyiGc3kEkExxQmdDuL+VQ/WtNxV9lWNQk4L1
	 3XrMknhH/InWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED11C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671939357.13098.10784113521397846816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac482e678db65caed5cf35ff4e85a888b027e8ba95c4494738768d8ded06511
Date: Thu, 08 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746719393
