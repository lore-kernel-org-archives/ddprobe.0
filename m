Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583B4C97
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747440594; cv=none; b=dhIBfPhAQG3wZbzs7wKs4X3oJfZbRvCZFe6qmJdA41ZVOLPuCpr608xoBiTfj7ZL/CsYj0wEcnDqUJqmCIS9Ub7ijnN3nwNNGT4SlduxDyUhFzxFt21z3u/bUpVKvk+IWvacGVnTln79uJDD0E6GafG1NUVsD5c+vwUZltw8EBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747440594; c=relaxed/simple;
	bh=Xl/E4I+7eQf3Ucg9QtrHV7nmlVNkz5qVKXYfpaizQJg=;
	h=To:Subject:From:Message-Id:Date; b=FWO9ILt6t6ck64hLahPnjKhhb0CJjmGccYrUMbGgetzMBN/VJV6EQRwMOztWSEqycC3yEdFsvFT8FdCu4th6MX8V55j6QNZWnxx+tgs5EvrAZPmYEyvb0zWYEILpu6ruKa5Qxn+YSk/nRoT7OLN0Xc7+nXBFPFOwqzKJ6aa1cEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBrsDGXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBrsDGXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F6AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747440593;
	bh=Xl/E4I+7eQf3Ucg9QtrHV7nmlVNkz5qVKXYfpaizQJg=;
	h=To:Subject:From:Date:From;
	b=vBrsDGXOf3agcLpWcDeryLEUESZGbFQatwaBH5RNuhizCABff3yy0eqxYw4aVW1jO
	 Kal26zMLfyvasPaUuyd+q0DegQg8PMKQFAvqPjJ5GoYIHkx6p6SjDzHjTAqwVoUeXq
	 H2xcSrEEeDJ03IPbSpRoXG280xLL8cdwi5Va4wiKZ1GdPi2VhosW1uLFn8gobnaDyG
	 KUdgNxn+UQbVZe59+MK4wd7zwzJLzvOsUNbBZFCLj5foR4iLEQB6pdQwOvQDnrAP24
	 i4P/4iN+bxVU06rostVKOiOlUFKlQVADLi4PxHISoGB/DkH1htvNn0jU5bWD+zd7kq
	 yNzTh9zNZHOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237BC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744059359.10671.7240219929011677770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a3895af1e2f0eb975beca8d9d071b95b4f31ccb62b40b7f29085ac475243dd
Date: Sat, 17 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747440593
