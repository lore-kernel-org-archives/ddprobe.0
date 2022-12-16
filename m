Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8658366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8435EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671163887;
	bh=5/ZS3/6FlKM16mBYKOQb53ioief1Y8586xpmn64Ym94=;
	h=To:Subject:From:Date:From;
	b=pWPHKbsmYx+Yp3Qyw4hwqE6IoK/yJ2dVylN26SEIINuUpCz7A0U/PnlzNNw3MApHH
	 g+SooBqkarfJyIpzVcdn7h5YqO4FDk8cZSptUMumLQzlhR2RSLu9Q/YaJJAgpUlFDV
	 4d5VONjcTXmJBpLgfsEjMpaVKexCNCD5EyeYooWTZk4DaY0sQnuO5UqxiYBQJ0ZCVC
	 uPS6hJarIpNyOwWdIBVuT9cYOYVZdqzuX3zCFpaj1i/fLBvOzgXte57Bl+OdU5qKE+
	 SMkM3fng/jRGQUFStpHzMGfan7xKYXdMAVckjSlDTuOhIt7/OO+nnWR8czA7L0KqsT
	 R4CZ3yp7u22gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC17C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116388742.27769.89729448308519754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443045ed0e482d1ef71aaa7aa9b4b7c98edc2b5ca455c0e35e5e7b58703b29f4
Date: Fri, 16 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671163887
