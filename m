Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390665661
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745746794; cv=none; b=nzaJmUxfKhod/mKt8dc77r7bjhiZ2wcxSDotZ/0NYsmmuRZEt8x+pObSx6jmIS2X3Fh9h8+5/kLZT1XdcR7+sGzUpv+tj01+FtG2mXbDUJ5EGJBo93IgZiywycOL7VYAccvf0bFM33bDdQleMzo2I0Kio+9VrqO8jzarw7jk7xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745746794; c=relaxed/simple;
	bh=DjUw7X/AwkIcZoxpeaFww3vI2vn8bbYbxDx2mTxWayg=;
	h=To:Subject:From:Message-Id:Date; b=Ni6cNXEtv5QU46LxEwJON2f7qbxnnPEeUInNRVRarfr2utvLx+PcLhGl7xppwQdHIQLPFLDMSSEQH0yexW1ZsFtfD472B2IugpUEGQrQxwTOmcWWRaWfox0qnCs6TSWbisL7ae7bY+C3jjaNbmTpumIQipVW6i9wdyixVJrzFoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjd6DJqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjd6DJqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A75C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745746793;
	bh=DjUw7X/AwkIcZoxpeaFww3vI2vn8bbYbxDx2mTxWayg=;
	h=To:Subject:From:Date:From;
	b=jjd6DJqu7R8lqOVuZWH74OUAL2aMbVLNI6vrAVTmtoM66o26ofnC6XAfiihezSuZD
	 IAFjHI5yI+nxj1cW1FeAShFwrg/PeEXGb6qWfGg9NM6NQI3X7wZNGTvQZqKnHmmHo7
	 9cfO7K0IQ7Aue57XAtWvnHT6xE3yjHSoSdjkd0BokF/hDEOHuO7yh1kJUEHE083Ker
	 SW8fIg2oioMwAQC1AGyYCTeSU6DKShJtvO+Fw+eQ5hbrFdLhH1bd6NhrKodbkRMy5R
	 KpVYtQrEQMt9erlWSLjK+KFlZ0HSj+Emw/yk4bwAsHEY9y5EpwPa4sQuZ8NW3lCLsG
	 Nd8R1Y2Pt/n+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B6C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574679357.2040.9738839986007514010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114cbedca494eebb7577dd9ea4de651ddb01581feb0c0f4272ff6696d7ffa46c
Date: Sun, 27 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745746793
