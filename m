Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601781C14
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718977343; cv=none; b=Wh7lHhbdUmLl8Nasd5H4IOSqZGhzW/Ehodk2EbyJnIVtcdbcLc25Gww/twv2+/4LY2x4pynRnv3Q3gy4HXuj/c8/Fwm85VsIVAUhT3+58kMUZsrNnRYDlAKGfu783OaSKa6HbVXvWCar5TGf1O54pqdQZ0JUnRkn4BZjVFf2N7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718977343; c=relaxed/simple;
	bh=E4u9o7rBfRdyzLtR8i84twe9T3go58d22WQQ0Q7g+9E=;
	h=To:Subject:From:Message-Id:Date; b=UyMlzVaQh2CRz5Yr1f/EZe53FU/OrA9LUTruARtFbfTEMeauwqOLWa5pG1bn8i//CtpudKiKYY+/mR7neiEPuUJVEudi22hRgjA+Mj/8xDlMKNbkxrHiPvxcqOHWsKD7xD2JSvcj6vYxA32Pry+UGMMZ0TwQQqFl9n/ci5qrStQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAk8tO07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAk8tO07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F8AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718977342;
	bh=E4u9o7rBfRdyzLtR8i84twe9T3go58d22WQQ0Q7g+9E=;
	h=To:Subject:From:Date:From;
	b=uAk8tO07CfrkWo/RBrHKaXUKMIU3idMtz/y7o0IMY7URqXs5me1toVAP9zhEI7Ze5
	 kT5plxq2xRNrjjFDkB8NkyfpCrBPAISfwBOuQZQ+RwE0yGHkApGndrvyhKkZLPX6OX
	 i8T9/fK0qExcFMWr5ODo5TRJukYuDYY1LxHUiK+4sGwgT5F8su9OUqorr8iPM0+4gL
	 JCMzYypbpMVZaQCFUjdCX4m/7sT1263CM+MDRlDP//hlF1M3mhhN56Po99HtZ2Oiab
	 Jyvd/e0s6P/igbgAw66Iq2ahtfs2tuRQbvcpJsQRBUBhw5uAgZo9M6RSZJ7zFTIjgL
	 HpFRcGbScWpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD783C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897734276.21827.2176961553966838446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ada6daefd8deb1b9691005ff44dcdb08e27960b4129503968ec07f547e5ad3
Date: Fri, 21 Jun 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718977342
