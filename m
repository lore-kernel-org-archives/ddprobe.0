Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582517C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646682984;
	h=To:Subject:From:Message-Id:Date;
	bh=bv3dl5mg2GuwqxL+GtYfHFn5CowA1gS98VqpyFyU4Ac=;
	b=ObfbsuIuWIsxwg+bJ3AUE0K/c6yfWRJDRDI/8F4tMIB5Mz+d3EiOgVXyNenMBLqE
	/ELU2NdjotXWzmUYeD6oqklmSBzkrH50v+9ENyZmCZtwI5AdKafkEum63tUzZqoYq6L
	FRlhGdusaVE/b9+PbRMNWaGGTc55nW3OXR8kNL40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646682984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bv3dl5mg2GuwqxL+GtYfHFn5CowA1gS98VqpyFyU4Ac=;
	b=AQ0uCLmoLmanIpqjeMnrvh6lpjUHlgEdOzh39g4ecVvknIIGQRW5eGt1DOX+AlW8
	BdZniNaODEyNxWOJ1p5esoeV/afhoBmbaJnN9U08SRKQ2CFiZ4tULdo8MKI/pPj09/8
	JZrjqxpTej9RU4Wa1puw5xc6eVgxguL03VXQITP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65f4511e-5839f95e-6903-4294-9762-7bc34c474509-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61f7864431dacdf5748a8ac84d5063b9e751d71d5a365418da5bd1786466e166
Date: Mon, 7 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646682984
