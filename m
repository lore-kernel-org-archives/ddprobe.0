Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD245EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645380385;
	h=To:Subject:From:Message-Id:Date;
	bh=ri7N/MFxvE1WBFlVGEjkjXqkfsS0hno5Kt3U8dXMa90=;
	b=PpQVrgl0Vwe8JVIit6IjThZZh/cINGBnhsonmBeb+yDrtK4AgmfnatD9zVMrrw+P
	ylzYmFCGlzRkvA2NPmFtSogYYbpW8p7BO8aPbk26PHksl06Cf96m8oFaQm/UooARKQZ
	gkcrU3mbPZ83VTYNbJ1do4qLW2TTEn8JimgGSDuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645380385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ri7N/MFxvE1WBFlVGEjkjXqkfsS0hno5Kt3U8dXMa90=;
	b=O6wuBxHZalGaS7BoGWxadMgojjCJWgaJWASufkUOeMxiOLctMx9EIXH+h/4qf2wt
	5xD+XIvrV3A2nS1pXvNIwipIIcQ404oQS/17BpEUvbZuOAsHQGYJqVB1GnIcvZvQS9c
	/N8O95yswTbyWhnbPIq5a8ceOwE+vIk3SXNx15O0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18503802-84f4ddd0-2126-48e9-8fb3-2ecebef07ccc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc68c7471fc551c390801989e3399541e4d122f0cefedfa797df5f1b36af7d18
Date: Sun, 20 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645380384
