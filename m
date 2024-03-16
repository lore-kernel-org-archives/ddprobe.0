Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108DA18AED
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710597497; cv=none; b=t8yjRmsS1/2p8Gq55/trqWVpwJYbxDt21Fhd/u+Nc+oY/VLxkNjtGhfGk99WdYEuBT95Sk4lzBhLeGdJKWbl+HxmqR9QEYPIVstEOmhLVQSv0oaNNtApJdQ9UCzsaJEtadpm3Qr73vtRC3K5Wn73knhatFN+q9t87bXbLrbireY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710597497; c=relaxed/simple;
	bh=XuU/yn+O17BhpnjgpC7YNi2yB52OwVeAjeF+LxES0iY=;
	h=To:Subject:From:Message-Id:Date; b=CJEAcB3d2Vxl7/Hh99wyrj6hUMQvsQccp9DleGDUPwFQfGNbLJxubuFDL/BzIbg/TPrGJ8LUck8YrsPt9fXlFUjZRM4tEZScHTM+7Pbl++Pck7YxaQuOkApfGoPhfkVkS0FSG5yR/2mhudAIfIk8TXrCR9Lg19L2HZuY/nSHlk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwsR9oB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwsR9oB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76144C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710597496;
	bh=XuU/yn+O17BhpnjgpC7YNi2yB52OwVeAjeF+LxES0iY=;
	h=To:Subject:From:Date:From;
	b=WwsR9oB18FBxEU9DbzDOsjsxDd6Y5pCvRxvd60ifuzxkntYsNI+K/zGstknhBOg+D
	 vAtpw5fRFgdXv+AwemGaNi4G2om0r+c+/kWMTekdyglLIYB+BJEfi4+GZ2+P0QMLpS
	 iDHsxLPvu6hiyHqIaips8U1euWfPNRypYPYXzKmYXAYc/Vpf14O3JWNToDXZLJdOC1
	 zKlL1P0utC9eKYdpjy0k4i/2doaAkO9Yos7MQUizy6eAWz2a3uUzt1UausiypAYNXH
	 XsVDmwaVu5G47+QFo0LZLGOV8RkOVnlFOU1bKgpGaaflNS/xV7EwJgWd2H0Qxp0+s2
	 rdh7gv80lYU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC84C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171059749637.18235.12055822351304370681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa35aadeca04ae3c86eb71a630acbd57590b324bbf459fff4476465d6a049990
Date: Sat, 16 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710597496
