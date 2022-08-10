Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED7B5CA9
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660116052;
	h=To:Subject:From:Message-Id:Date;
	bh=A2bGO1PWHE76BWzp4wy0Bj+nou1afyA6+IjxwbdcZZg=;
	b=SNpEihS/qbLnAR9PDVlhq+q8J29GVk9gx/QyZZd5gVEbVl9lYf1jlAGo4y8/IsrF
	V7a7087IIWPLHPnicLdZV0D1xG10NqIxe4+lWGP2SiAmx5uTH1z1KfVh9CqirFgNAoM
	oJ1Aq9iwX6WnHtmnqM2OKc/wjU82lqun+LtZatKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660116052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A2bGO1PWHE76BWzp4wy0Bj+nou1afyA6+IjxwbdcZZg=;
	b=jN4P8gDiq/BVfkUJaYOodSE0ZkIubcG9tp+AxhaiDChRbE0Y8O3CVlhrreFaPFVr
	uoR1CJvypu/cAf6DhK0eCXvnpCTCHHvQTKZ9DraebMMICe8NLwWNwbdrpsOUt+p+B4I
	K40r4a+Smz+xS56R0lGV7SvVWDUzRMsGnhjfPCKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286a0aa82-27c93b55-672d-44c3-8591-7704d3d84b58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88d5cd905a553b62eb446bac280634f5a89071bef0162230814ad21d5502f285
Date: Wed, 10 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660116052
