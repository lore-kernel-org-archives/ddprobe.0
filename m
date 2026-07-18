Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9C327CB02
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784413714; cv=none; b=e0+Ut1GDrVnq0OBJcJ7hCrfb6mA9GP4S4mqU70Ftn9A84rf0+l/MFovn+Dj/ohYcxhJ6AISCsrGO/YCHOPns2ErrkhOtZZ9a4sdbIPyWiNEUCix5BMXXjcY5nRS27j+wOP4V0BGq2jWF3Ta5DiZ8ad4mGggY6Z8R/cW0oTsmx2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784413714; c=relaxed/simple;
	bh=npf68ZnzQxUU2hOJW4eK6+W4Pb5Wp1NfxuxObtsBgGc=;
	h=To:Subject:From:Message-Id:Date; b=W/g2JlLAJ/sGQjNDcgcPEMPDphKp4C7OBKtmMjL9KSmVFM/yQNvC5UuSFjRGJhclHR+CC9xqKLOlCK5FxNH3S3XYwM7UzoqlCOi2hdvQIAHT2VY3ZmhMuZ2czrB4eMY4NnjpOhwNQIgDaalodgHAVYzc8xp+uzRhgKImVFV7xqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=envTjQ6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="envTjQ6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA2FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784413713;
	bh=npf68ZnzQxUU2hOJW4eK6+W4Pb5Wp1NfxuxObtsBgGc=;
	h=To:Subject:From:Date:From;
	b=envTjQ6an/BHGXx10JL6QFt3nAWkW1Oo8xT1AVLgJNeLpil51D/JPDhhReSHGK7ID
	 SJ54A9sQ20r5fIid+V8Uuqb5vxLYeTeU/kf+kUzsUjWsbpQDg7XXhISpV1YDie/1rk
	 M1FRic/jefrgjPCm+rNh8GS62ZVu/erRy1kRxdyYzsqR+udz4Zfz6jBoEXlPmcmzZ+
	 +cm1u8ydHxCmOLTjVLniSiwSP5OiWWBuMtSITamuLyPYE3WvRrJO3hahhjmTzgONuM
	 SZohMyg+AV1XhkNZH4j0TPGhxzPiGmE+apiWEkM4HAmO1NKOv7iHDeBmn/9qCsHmbE
	 0Zb2xxGrY9oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3020C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441371370.5352.7018855805697495866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1588fa92fe69696d1c8ad662184dd38102d97e18ba552014bfba333c2ceb53
Date: Sat, 18 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784413713
