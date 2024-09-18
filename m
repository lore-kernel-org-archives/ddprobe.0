Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4377B291E
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726657554; cv=none; b=CajsqKjH8by1lXeYBRN5Nw2E4sojaeyWfutv+IP7b7yk7iIqrKhAE3y6JGAn0Bn2GwVLkePbYQpksbQCjlCd6UteHejwdn2E39oUfGvMcpeoCPBaBJyj8ij+OPC7xD+r6RGZ7Zv+bJTOYhbbh8NuZlwbOXVo0URErVhbJcjAJck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726657554; c=relaxed/simple;
	bh=DyJr8sqoCg2/UDEV/Ch1CvGeM2klVUnjlCUoBTRq5UQ=;
	h=To:Subject:From:Message-Id:Date; b=VrnNuSDvuZVs2RalSySNW4IwtcTA2iOpHrVk/LVis4ELFBxnZTuDPsRZrgUotKEBIvEnhyqLiZxxkSp3uOGRs7KAkt+fhInUdwaLTFIR2/uELJXqBmCA+NFE9KOqX9GANqv5yljVW/Dd7n04kZFyCh7vUFQ1k1/unNxMVxY3BTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LddIDdnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LddIDdnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30BFC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726657553;
	bh=DyJr8sqoCg2/UDEV/Ch1CvGeM2klVUnjlCUoBTRq5UQ=;
	h=To:Subject:From:Date:From;
	b=LddIDdnU0q3MK7sN+xmMrMREx8qu8K57ZNnBRatSDe4tnwHzNTw6EyFYuQoVku2Ea
	 ydTui33Be2Ia/iFJ8Qv8MkjfBOFD6hVjYmxlqtsPbgmY8nacuwe2fEkrUnA9Dbxw59
	 9v3RWXhkV9BWuNbrquuvofhZYNnLjpfhWfI0QGVSfR2gGAKk7VwDkyUSBU9zXCPFzw
	 b4YLp3qCjBzQIgL7ZuQK6AIGdwlwavHJSqvk5/ywwB06cu5Wrwga11UF4RwNezE6FY
	 ZyN3izphtEf6W/5ANvbqHSLu1zPe7lhPL7co2Qx8XkoUcVHyA6RWyh8nH5Gx8ACuMo
	 kUzB2iKO3Y0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D8CCD19A
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665755360.9578.16927810735195737959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6814175a138543c441d0b01c16b783b17ec97985d56d953080ea9eda230664cc
Date: Wed, 18 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726657553
