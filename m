Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4731D63DF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747838994; cv=none; b=e0uYRUFoh2c/+DuirIFQVOYy9nsyAJ1cKxVCaXQqAew/+4kyDc1vZ2Pn+xeoZgq/mB6VGn4c2yaVr8p/2A60cHsJSqamT8af4Up9O+9xYI59OvDwsAZtOix4fEiwpJcf/KT/Rv8+hiuOSx+/EgqMn1VsDIHi6iXqcJ/xfQeroyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747838994; c=relaxed/simple;
	bh=poTUgsjv9Yfo3f0NUKN0AdFYtqtGe/oCK6IdU5DByx0=;
	h=To:Subject:From:Message-Id:Date; b=ZpKcKlkMmP3z/ChXveP5WpLWBOuUNiU4Gs+rn8Oq4xi/aTBlnHabjqrV/Od7w06dJGs1fBSwbzM2KV2bHvrLBauSnYb8l4bo7eSIqiPeot/h6HxEFZfPZF9KoNVOuoUcgxMxTF3Ub46GW9qmXgA3xwcZ92rMxuIZDdsTTux5sz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9wmR+ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9wmR+ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747838993;
	bh=poTUgsjv9Yfo3f0NUKN0AdFYtqtGe/oCK6IdU5DByx0=;
	h=To:Subject:From:Date:From;
	b=W9wmR+nswulDJylYMxzslxp0243JcZBs3U/f8xFwd/pg5F8Ott9sD5v6TpWtAVBO2
	 EwzJ1mKJdEkNI0f+Ikwh+LBalM2gfyh+c3JPyKxcjL16D4YfG9RcZoXCfh7TWmfQcI
	 LHK+oI8pSqeBwOXL5JDCHXhkRKFCNdRz6Xu//P6eVP1yArgvQLBOB+pcXDik7foAyw
	 jFhXq5TvdYkTpzNtx0b51dzaTxtPH/lnRwK+LKNxM4t3Px8/lV38ZvoBGEqxJqntO7
	 xHOj8CTNnvXWPEIHL7+vHQLN3dismr/os2SXySW70FFgE1i+6vOeJH49ISFkzjSxU4
	 QWjlwbHOLLc8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2EC54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783899357.5727.13520085019481380031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8049d1105de32c38257745aab00423dee1871e84d13dc9a44107bbef3724c06d
Date: Wed, 21 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747838993
