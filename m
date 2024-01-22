Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A38036B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705886897; cv=none; b=tipyM0lRa8zQbLeaQOCLH6gj8SlvXYqQtc3OqgKROI7sqasXPHLFK8OO5eSNfxaEgvVnggUPivnfsK9/Bof0dSarVHKZr8wW9/WkjWc8nJFbzoAir9HNDqA8o4ZNixg4Y5THSreXCqfoYyMJsGA6bD9UZUOk7AH07qe0f0Ow+JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705886897; c=relaxed/simple;
	bh=SiD4fOYYvGhcQfONwMhr/nB98+w+EX6zS3ddBc+UwzY=;
	h=To:Subject:From:Message-Id:Date; b=pHt/pBKRIFTAimlY2eE6Z+6SjWAwtOFP5FS3caIoQlIRjfpOSchADxIXiiX4y8+03ahfIX1f3fh5PU3YdcL0eP0YT9hjwEq0207VgEdEewCohxnh7X88o1KlvtESKXkk0sYIt9dlhfvKKROlPZQXoAO0z3ie3pa9Wrd1l21pmaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEk2KK0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEk2KK0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6E6C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705886896;
	bh=SiD4fOYYvGhcQfONwMhr/nB98+w+EX6zS3ddBc+UwzY=;
	h=To:Subject:From:Date:From;
	b=OEk2KK0M1JfIU42So80Gk5xv3JLlZ1ylMCaIui4VBrDXd7XdkxgJZlLz6iJg4LYfT
	 phkhoL+T2h7qOFKMnCXr3P4TAzxVCqN3JAKLRJDh5j/zG2vf93n+qIX5kxSHiVs6bH
	 c4nwt2l+8gQjlry0Gy70HwY4pocCCaWvGKUkVzKuhFhopkhXKzSS2SnaGxF133rno1
	 YabCFamwe2PgQgZr4BTW7kssI+I5shAgWkXDTzDj7BnALm+UKdufVzpXH6KPeOaZ3e
	 Grdjf5pbdH8P1evkvJDFiz9C2+sdHOm7THLT3Ij2gpXoL3DTl7Ib8wLMvg0ofQkx/H
	 3SpoZ93dIqbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63604C47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588689637.21764.9383515596979293553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e439d07b8ce1442ca5d5df6b42ee8f28062773e8ec8b7c72f6345b3349df6e24
Date: Mon, 22 Jan 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705886896
