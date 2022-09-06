Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8D3163
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F720C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662432053;
	bh=4lcNzZI4T4MER8ZsuKqSY2uZruONQ/wNqGs8DcjIzMs=;
	h=To:Subject:From:Date:From;
	b=DhlFV0uQ4N/UV7Eb3rzwPvlY3+/RpKg2TYk4QnawBKdj+GdWwFoNDdFf02RcudWe3
	 W9DvLnfcMOn7MDZFuaKrkGMNK5ITos2aflaZcmzWr6LbBqtV6ROiQ/AVk/Kv+B4h3G
	 oD2ShXZGUnonROAC3UwkhdYRcazW4+lZ2Z9AfEkLUzsatOH6YfqyHU28Pulv8ppK/h
	 /T0PEIYoeRfOtrFQLNNARtaGqPZt2yK2S+QStT0T0qXQJQeV1LFslnPrtNHX0hZRDI
	 ZOmx4H+Iuye4v4F3lWCaGxi6kUwh/p/CEdCQH9sy8207UBpOGI9RaBmbaDLNRxkcnG
	 EpD/HDvbKuCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523F8ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243205332.25467.12829722518560128432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f261a1915836b26a3eb69651d1bc7ce04118dfcded674a3c4b5c5ee0c8c603f6
Date: Tue, 06 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662432053
