Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872C02F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645149385;
	h=To:Subject:From:Message-Id:Date;
	bh=/6YcxY6K/SeFpXag5obF0E5zVbHPhosVf6dxlxt/vdA=;
	b=hRMG1X3lcNOk0ZEMC9b6kSoZ2WkVXFEntt8ttI83E1lq6cz78Vj5HFzLSEGmMqIN
	Xm0N4bPCtm6Y0FAGZphnVbcpwqKkJ2bYU7tDJovytGx9fajhiJ/S5SkSwCjWnVCj8rT
	Cn/xmpCsy8CL66hD8SdMd8a3oLkRjOj97uI1Nlck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645149385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/6YcxY6K/SeFpXag5obF0E5zVbHPhosVf6dxlxt/vdA=;
	b=M2UK2nQ4z+XSj+JPNy9+/PgkzmTlhh0fsltHi/oXD1hLjixD8TxH+Ncr6LHBEtip
	yMb4WImVJx3Y71JdOizCYR2byBdD8kHtRqvyiYzE5YOUto/m3FrAXQ3AKYfkHAbNIEs
	0L6bHCIfRlZ2KGcrTfMfOF31R2KZVZHSN3SlgCEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a8b7052-7273f6bf-71ce-4faa-bded-83c7eff929c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37d3226f49c50b884c571b08a95c81167ba6375af7e7566ccd92816a2659a6e2
Date: Fri, 18 Feb 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645149384
