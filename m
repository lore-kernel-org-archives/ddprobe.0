Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337062A1AA
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749859794; cv=none; b=JQXLmLUAG1JP0IQL4nv2lnpxrUT8JiD0HnOvk7pi6FAWvizZM5dRzcGQdLoGdSdovFyiRrfx/ob7zd0RsVLBFdX5TvqV1D7EwxQtKyaIwNzjtsLpDOgO3wZuTE0Q4bKAxsqmrlkyADxk33xFZ6B2l54pIm+Jq1B4puCrGSk3SlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749859794; c=relaxed/simple;
	bh=0nrA6v6hKlvqIMK/U8VHY/zYJhNthQSfPhv5/j+FhOM=;
	h=To:Subject:From:Message-Id:Date; b=C7XrKgBYnDfujnS1oBQGG74DxU8neZ0h0yOhi/DYTzSkslA9qLpgpFFp8AFXLfUhA9Ag/cYpZfQXkCvZehMNoPbNekzNTbsNaQi2X866qndh5zMHETBMgoSL7txvk9QZ6Z5fIZHfSa2+bybYY46QbIeg3e7PD1hnbQcs2qcFl/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+ap3sRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+ap3sRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749859793;
	bh=0nrA6v6hKlvqIMK/U8VHY/zYJhNthQSfPhv5/j+FhOM=;
	h=To:Subject:From:Date:From;
	b=C+ap3sRbYtT6bNXh2iS2WmL1eSkJOEl94Geldcsswu5+8K/hZd2YJmzRAABs1qCgk
	 ozcV6s614XukP9LXlqlDLpzmi24p3aoxNjzH2EISSxsHKCPzLdUrkFwg7Ouq/PoBnU
	 Kz68S1j6uZTd9X9cF9DVqfaR06P40tegO2Vg/Oggf0tZ3KFXFx6J7t3ic7M+Qa5ZN9
	 8GcRZzwTnPyWFZz+t+0sbXulAbCyn5UtLhCH6VUNy7qnQx8rX+4iJl1C8KmykUkhRL
	 HJZqg83YE0d7icdNun/bbsII6X+otHxZdJrS0HgeFbhWebDO4Ot9NOtjp8uLzH+Mw7
	 dNnqxSYVrg4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E6EC71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985979357.13392.3134813022153182296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e6c358020329dab9656a8216033b6d38e0058c03e77fa5752cd4fc583bf266
Date: Sat, 14 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749859793
