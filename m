Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F2F17FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735908954; cv=none; b=Inxfi4hcc98bjBBVq+74NPQNlmnrAPFXHeXfpIV1vctOqhKhlFqk0WU6enceqJ0v+Q9n3NDqybTM+kVH41PmRiLMT1plg/or7klk4gNxnnNqja68AH7n2muqoJhKo6sS2cw0IP9jrMX1vCFaZxzJuf2QbhXQfL/n1Ezl8mCFV4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735908954; c=relaxed/simple;
	bh=6iyA4bEyfbv4XPRdBaTYGi8M9xAe3ymS/oLN2BwoOcA=;
	h=To:Subject:From:Message-Id:Date; b=YVgxpATE70cegEMHwQ7eyMqCpaUzGWLUyu/VZTkTAv/S5vGv/nOd/NLPz4cLLXXTgwOoXZu5UXciK5g2GNpoH+A8vvSiKYAuelmYy6VZYxZKEOsMFNdNe0Wz/DtMybBnKZxtvT8xjxwsZmlzDSA2gsPmyY6I7cDAXZYE5eYxns4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9g9zr7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9g9zr7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A634DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735908953;
	bh=6iyA4bEyfbv4XPRdBaTYGi8M9xAe3ymS/oLN2BwoOcA=;
	h=To:Subject:From:Date:From;
	b=H9g9zr7IPlBJllt93uCYqNvNdZgNgy7UOnTeuhVyTD33MUw0eIATc449utU1hGEsE
	 NCSytRDiOUEOy17GPJw8PiCcmZvXEQ+RrpGdr8PCHqYfVDxrmESPBiqHgvNKZlGHpw
	 D5hDYdWer/9MEntDVCF9mDawd01pp7oYrRLl2gAvN7uEHhBvyCbJTNmrzQBrs8b3tK
	 Hikl/l7IbTUNR7zGqxs855O5XRrk+h3+9B2KP0g2hBFmAF+0Kb1AlCN1Bvq1jRU7MJ
	 MWRVpAd8Tc9E3man2A9D+Ch8rNw+qAta/7X9yrR+tLDeFILmWV2m+YCwjMaZJTMwe0
	 HXYeHl9+AYT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92894E77198
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590895359.19228.3892085036993780830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf81817fbee0d8510be88a6249574b5c0b0208f6e52f1db5e89809a485bdf700
Date: Fri, 03 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735908953
