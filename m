Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878FC33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647781584;
	h=To:Subject:From:Message-Id:Date;
	bh=gMAhBDdO0d7zHl3lxFKYXytoKfEAOe2qQeLD1qoTfqQ=;
	b=DNX0ZCXrw9gCvOJjtuosMZA9wtNVkl0LBar4yBrQlyxCFpZpVfOiTDnGLHN7knQ4
	qRIffXs2nxMrPL3HtVgsRX94j9iWvat69blNB8p7vkgQw+y0qUp4timtsbKybpImB3S
	xJA4jXSGrKYTaNilNtDgeNWhD1apcmruEtA+7jE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647781584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gMAhBDdO0d7zHl3lxFKYXytoKfEAOe2qQeLD1qoTfqQ=;
	b=TAw3RChsKVpwazVVhMMWDofgd3MU2yM8FtOs9qI0XYVsUa6SJsvotEUv5/cJvmji
	X9oLKbWhoydDl+1e6kJwr/m71dJbwGghMX21CNQkTP8RBJLSdJs0dCxPK2prIQvtN4g
	NoaHHEQ+yqs1EfcMcV2X99yRgf8Z8IHYx5JI5AH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa76f9f65-dfdf402b-3c8b-4122-a69d-7a97a58a082b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e4f31166db1d884325e19ffa34af21dfc6f0a806e71f0214082f1111fbf9787
Date: Sun, 20 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647781584
