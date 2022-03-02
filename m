Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F832576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 08:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646208085;
	h=To:Subject:From:Message-Id:Date;
	bh=q4BxbAJvPEcrX0BG0a7rdk5058wZSozqMX8GGN3tEtk=;
	b=fhbGyYSZfE5qIYMHTNuaOkSQ6o6EM2kXUm1vFve1LbaqAAX2dTNeykh7J1SUw5Pk
	JQ+qzbnKOoZbqK4FcK/m5AZLxhM4ssTn7cY3gnoild6YwHRD2x/5FcfDE/ozEUb5wyj
	Ng0AN9TwDNKYEUIiIwcTMN9WLXSmfL9fqdKT/26w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646208085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q4BxbAJvPEcrX0BG0a7rdk5058wZSozqMX8GGN3tEtk=;
	b=Oe+SbiRFdizc7R4f8yvJytZYK3voLj3g4iZZillic1FdA930ktfJmkmqNLPJ1BDX
	EZ3pjU+C44lj/wghHkM/Eijs8aJXtacQRPj0DZnSG7rhDh38rxLHmqJZepT0tBfk65J
	tkN5ml4QNYlcKeDfgDSUEb+Sw7dN5QuM1VEV/j3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49a5eb18-8a314a00-e215-4958-952a-e924763dddca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ae17c4ad3d089d6ab065111585e22621ae354074fa0380ff5e9c019f7baa25f
Date: Wed, 2 Mar 2022 08:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646208084
