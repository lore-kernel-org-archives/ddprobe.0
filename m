Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4012C80
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660950052;
	h=To:Subject:From:Message-Id:Date;
	bh=UTIJFpLeKvCkD+hjlzvzfv9chozBLd65EkSfurC/LX4=;
	b=iSI3G5/iMF+OsXrB/9mvdleJria3N4Jn2AqqXloxdYI0vxVDYQ+Bky8dMfb5P0Vz
	yRMWAVjmQeqQ6/tRH6UVqnUDOWzhxqWze6kd4KBfDiF4ddPRNYMX7Kx1deErHYwJxw/
	Gcp3t/p5FNiWN5yiKfFKuMM0w+/jDRzG7k9106Jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660950052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UTIJFpLeKvCkD+hjlzvzfv9chozBLd65EkSfurC/LX4=;
	b=PBAbuTyNUgJPH/mlcPq4txOgf04odyxvl653ziMuBgGPf9QQc+ukmXinDeXti4Zz
	+dn0+lPKVVC/gZPI3Kd0K9afEF5JWFAuFi3Dq3oHMwb3VWHdFHx5tWNpKFv5LJ9Cl9B
	b4HK+I4nhSPKKrtbkGX7FjN3Bx7rEQCnVWq0x26E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8567eca-9cc5ad31-1080-4763-b3f2-346a3970fb28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0af25d170be444943b63eee46f347280f153cd461690717c8e2beef1ec660d23
Date: Fri, 19 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660950052
