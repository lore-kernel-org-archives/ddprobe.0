Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B615A96
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77515C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663612253;
	bh=NrwsDv9SVr/56rxHqkuDbfO5Zk+0z5eozU2ogKfEJio=;
	h=To:Subject:From:Date:From;
	b=rt1IQjwhRgLwj9XUlwiJQ+LUqKJ5kKDTHK4LmegXe5zdEilsD8QR6vGjhQD1sKJeA
	 12wuWRgkvSn6virXCZEsR5BwVX8aHV2/MGCvNd106YOkJ+63yfqVxGabdCcHL4SVvi
	 V/wkrjr3FOAhLAXmnaRwEs3DO78FnKXnvb0hxJSRytagOOrFlFrj5BRp54ni0DHgve
	 1JUiuNdCFY8yf6IMUlwKTziBFaILkf8+3snx4Z/Do8mJTZ4bxu9OeDbVzlyv7GXy/3
	 ibuEMZDvk8WJXEDzQMqtKpA4mDydwOxytKyGazvU3d1RM+5Li3Y8VvEGxHvpOlB9ak
	 x04kQ+beiFicQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3F7ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361225336.8309.4786071319813449103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bc01ada04c4209a680d75c83929ff6c919cf0ea0bf7434467651b864d7dc9f
Date: Mon, 19 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663612253
