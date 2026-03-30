Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D434C2D6E7B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774865093; cv=none; b=PZZiKFYfcwuTjPFTTNDbfIUUtkwyOdv2f/1826kwgLNRWQMhGdXDw+PdXtR1qe6YTYMod3iPWqN0AK3dw8xtaGqOIbw+idbFCcjJ+CGmtzkBP8acwf2ifBxy3eEeZnSEdGmCDpZlhylk27N0XB0owocCXInQ3GsQRnjQPOEKxM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774865093; c=relaxed/simple;
	bh=HX4wJtk6kh9m+YSfNNOTqlz4SW4Q+mfvII1yJ8lPRw8=;
	h=To:Subject:From:Message-Id:Date; b=Hq/dHdlZN1F6mW5/HE89q3nNUAzhAK+F62aYfyzCp11la5ReqHaHq+PDt7LVseP7f9ph36TXaHJe7kpkOkkyZBfwzFsj5W78WhLVNdWPyPYqRtSNmHnw9Xl8NxwAuqaf7aYpbJKvQY+Vcs2iWGobr9V97Wz1xdCAhUaDtYuK70g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoOkXD6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoOkXD6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0032C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774865093;
	bh=HX4wJtk6kh9m+YSfNNOTqlz4SW4Q+mfvII1yJ8lPRw8=;
	h=To:Subject:From:Date:From;
	b=NoOkXD6BIn6giMI/8YgzLlKEo8PqOXACY8SJNDcy2IdtlaQHa2tC8evVyWFiuWYfc
	 MAbPnGbx2E4LeauKWca3U7cl0xN3bQ6hPnHc5PAr/hjAH2i+iiivjznUwjFUGW6jRO
	 hKaMvArLO6phNLXWyHOmLU0P6ZxUBNmCbDxGmuW9JuvhqQcM5X4sdvLzJizi3ze3FX
	 0WBqj7ZJkOpxn5YTZvyuxoc/BHQmxhvBOgpTYdfzidkasp7dCvCb3R2R/MzkzKJ6UR
	 JBXwaJhWyIlDWO9cZHBkeOrgIgM+xBRmid1yXoHlprLtfOPEETwVZaR9JYn56PKKjo
	 NFL31A5FMH8Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D2FB3CE5
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486509358.23750.3147545964662670317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbe35443e9231a359aa01d8381bf97a3694cca230a645ebd040f9a00cd07901
Date: Mon, 30 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774865093
