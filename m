Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2089E3A1E87
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766019834; cv=none; b=ZoOoOUwOqQKg0TVLAbn3yhJxE+T80WPTBlzJXfhhUBnVcKy/bnJ+ffmbR7IAb1vOfLFloz+YzLjrFm7JITkN/82TsR8hLI3xhf+C3CHKnORdqFI60ZPB63rKemCAhJtCA6dsXPjLJbTOlWTRsgnn/kpsiLmI4PNAHvOUDPLtA9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766019834; c=relaxed/simple;
	bh=5PZaI8JUkRGHxN6teLsgqrdcNUjVxGQq9iF/RWgr1Zg=;
	h=To:Subject:From:Message-Id:Date; b=EuE2i+ldMc5rH5pB892sjNT5dA5FbYMkGfvK+G7TL6ctzAnl6glXQu2YZ6cIV8gwcptSE6Un4sdj9+VGU/UX3Vsg09/ayTHLh+cNFsxyLiuGF3+8X6Gpy17k9rb0zueel/srUCP1YsmaBp8bTBNBNXef1UQG8er2w6aRo/HWPhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIMx3G7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIMx3G7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39AEC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766019833;
	bh=5PZaI8JUkRGHxN6teLsgqrdcNUjVxGQq9iF/RWgr1Zg=;
	h=To:Subject:From:Date:From;
	b=fIMx3G7rBnPigPs9SL/cYoEW9JyFh4ZoGlYJhiemJ+hZQhAOcFRIqYEFZl+wd/bMp
	 921uEpGSXKi0NCRczkDsnePMJZzyOR82iDooInwaZ8Kih3IrX99LR/ojnTdnbjKUkD
	 ML/FwjtbKO6MCwCJ8u2Jp4nrL3ItzIYvo0+duV6vSWNNO/4T3Cmrj20NjmFMvdXOZG
	 BThq7rImeMlkO43263fTwurLCBPTaGYP1UCiaS/PPepcZxWg/5OUd7eYWJzGssmyXV
	 nCztrn3xAAm42Irgs5lXv1Ty2+m19170kuzg/di/+uygGpwFCtjzy9cz/EPCJ6G0D+
	 WqRelAT6ghYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0266D68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601983361.27024.17893706146997563362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c21f148f8f4738de7cb9bc0ce1d8fbff1502aa6913c8edde9dc7a0b050c7b3c
Date: Thu, 18 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766019833
