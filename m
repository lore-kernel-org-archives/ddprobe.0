Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1EC2F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646779284;
	h=To:Subject:From:Message-Id:Date;
	bh=ZI9UAk2hF7LFI+wKMUMWFBG9hPQlsFSMv8EkXm6HEsk=;
	b=kcvIT1MFlTveZ03KowcXyLNYAl6QB/ZVLerfnXKFCgfVwWpTyTADwIIQPbftHx7i
	esvcHN9o0yb6MHJrHzS68zxyQQm4rHeJcZVq/gruUaZby/9/mWQEnWoKmZaC0CrQAAu
	Hwu/i723Hj7U9DE/1dSPR/DNKPk1RNMOLDE2OQzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646779284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZI9UAk2hF7LFI+wKMUMWFBG9hPQlsFSMv8EkXm6HEsk=;
	b=DCQ/qQsrMnjQU1HLh1eqM/aac9MqF7pKM38CmZDfA9gbnnoexPNkimIm3y4Pa8pd
	nTYStBxoDf8yFfe56KNy4WENo09ClHH4rxzIVgo4hYz9mJgnG6se/e/7OCS0LbHexGc
	Sk+Gx3oWKrVAYqvwb7MrpCfjDBPuAsZU1kzx/Xyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6bb1bd30-a780d71d-cc12-4d80-9612-7c4d77d04b01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f41830f95a9b4f530274672c6f0ff0ee3460c63a2b74c1019275555af1a26068
Date: Tue, 8 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646779284
