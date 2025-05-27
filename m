Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511474685
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748378394; cv=none; b=ZJdbitAlG8pHvF/E6pef/ohrqA2IhisCPXzfTZjqIXL//1i2VOMig06edTxMPS4JHeuTRxNF9d2ProXILRD9vFP91nkUEN2/nLKyH5rJpStunsb/oEHqeYI79fDhB+D31tNrC4DC22/yRsmZvD4S/KKtF9W88qTNsMtXl3SMZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748378394; c=relaxed/simple;
	bh=pNo2ZDDdyyYxA9wfYBU0Cq8Erl5ivCmzxvf7Uh6nE9w=;
	h=To:Subject:From:Message-Id:Date; b=OjI6EFCD1HzPZhjHVEQ/GL47tlk2cnzvnbPGXZ3HpAnFBuee0a3jcDNXtD+7zbSChVF984hPR0HMePi6Xz6ynA3LsZ3GBR3Y86xychVcqFPOqiLSX5zg8KFhJYEHsuztKdzQ782azKuuucyfhIa1emxVC77kgwKIGbi7hjSpE34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4f3exxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4f3exxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378393;
	bh=pNo2ZDDdyyYxA9wfYBU0Cq8Erl5ivCmzxvf7Uh6nE9w=;
	h=To:Subject:From:Date:From;
	b=o4f3exxM2KcR6c+jIZ2iKvxFiINfe8SrZUvgz86pb4gd3pOjNazqONgCOtqi4HFd8
	 FeR/0nn9cv83tLeKl95knaLpTc+DNIpq30YNVsXmZa2mF3yc8/PsRc7+t+kdx8KiRJ
	 84A3RwN5HjdE6NjftNXmjeNM+i4ZP3qOhod9ecXLRfhVzQI6WiUt1I1MTmluokVS4f
	 YtxEvrH8rT3PuEg5umlvj8Eo2J/5T3cw4vSykZAetjydQoK/DC2SkYTtf3lq3rCmaI
	 D3h4vVufoQhSA6owiOcia8uQbyGIrlFqWV9Oqu5KYGKqrxFhPYwCrWyevQRwEwy19V
	 7RufxW5ue4SXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C96C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837839358.10700.14500631166937191983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc5dc05bf695e0b80701a59fdf59f7e2086824154fc481f1b22c28b953e2d76
Date: Tue, 27 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748378393
