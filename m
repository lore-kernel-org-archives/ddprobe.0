Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6525E7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661356252;
	h=To:Subject:From:Message-Id:Date;
	bh=SvP6hcTHc5qUjtSbBAjF0PVMzVfdiFBnElO5grEe9iE=;
	b=XVSRayDtyeO1CD+BXXr0+fryQXMzo1dVeQWyX+LsFt7g0ACQ/Wg5fnF9x16eznN8
	D0rBFUXO1XRa4GzB0Pz2gDyJ50eMBu9+hFE7SH4MC6DBcw/HeXFS10NEdewEzl8fbNB
	9Fpa26czZKaa8PkXB8ZvuIh5e2fiCQ8LqBzmvx5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661356252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SvP6hcTHc5qUjtSbBAjF0PVMzVfdiFBnElO5grEe9iE=;
	b=OMUw6q300hZx6z5DmZMt9QyRhf1Xlu9JfznVy/yOsONzPaJzn/VLQHZbpdVI+wUu
	6vIaTZBlPtpY3+J6Lw3cHKu8WNWjNSW3Nq9WVTFdh45+Br7VrINrxmEXp1PfPMVqltL
	Os8uSDVQ2mdSqnmykhtwDOcFtePm7U/YwVgr3afM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d08c9d6f-7ea8e12d-212d-49ca-ae73-94eeb43b3eb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cc109e12e26560acc997d16dd795dbcb4ea9c2a23279082138a5d2a53abad33
Date: Wed, 24 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661356252
