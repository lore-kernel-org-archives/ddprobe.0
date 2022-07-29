Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C422F2D
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659126652;
	h=To:Subject:From:Message-Id:Date;
	bh=bEdFSFrobnvptFVhoz+3Nz/aJnVD6DDHM6xMuU2ZLFs=;
	b=aWDMutHDSjJJK2/l3LOsasURfJ36cKzJnn2EKZMjPc85K9J9zcQ8h8/oPkUqTiyp
	91487ETS0omOv83ivCkIsXRJBhRq3Uu45nVPfaUcAu+zeDhfh1uxRe5VrzWFGohj07x
	AvBLgfOK4Kgq4wmIEz1diJHU5VTNqCJPFXDqv4WI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659126652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bEdFSFrobnvptFVhoz+3Nz/aJnVD6DDHM6xMuU2ZLFs=;
	b=LvSgxwo+vElOJ+s1bL+QcCgvTzZWjBqlP9g9sLoBNZM/PCS5k9zbJGVvSojlYNu1
	k1/RcEopYEk/zisw3rGCVpnvmKaY1NFem9P7xRYpTs8NEGv3bBNDwyY3PruYJmmz3rl
	7rqSquoDMTHMv3rc95S7LbGo8zT4ctFX+DRjWBXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ba79e87-adb3b514-ced7-4f22-b8d7-499f2f06b6b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adbc56cf26f6cb4392dffb5335bb5886b7211b77c0129a73521a62a50c05e80b
Date: Fri, 29 Jul 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659126652
