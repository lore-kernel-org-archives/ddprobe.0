Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7320317E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647698484;
	h=To:Subject:From:Message-Id:Date;
	bh=2KYKDha1BLJlSOfZ4BfvmEHr9Qb7BMU2n1wtI3DJrAE=;
	b=FJbtOM4OkpMLfiV9B5qCL3y+sV3WpfrVE86RoE3Ci1pUlfUiTDgbEySJpdOdbj0T
	G/UAPIFq+92Q8xgSSYOfifaAVwmVLVN0VjFYE/nkwyjZjV5mAuhHPddSUByPcLc70Jh
	xWAPsueK/TGpOhtcS7oVSqny4l8dv7G6xcBl+d64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647698484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2KYKDha1BLJlSOfZ4BfvmEHr9Qb7BMU2n1wtI3DJrAE=;
	b=Qoptd0g2Rko5AUKLFooLVLTLCqAJ6QX53Obw1l+M9Rj1lvGy0XOej8yJMrGeoXbO
	8pdkSzukCB2oeXzVxtKG5snqrUXv0LFxicGXYHcv7JXMyD+NnSo2xkb6AyAdmT+6sC6
	pCxkH9/Q1oUspQYpvdVpkDv//gTQV5OeyShn2ATM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa27b9e01-02545797-2745-4c45-a65c-7ab7580049f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d8ec65b638cde0d0329a1509d5eedb26cdf9e11f1038a96c3894b7bf40eb362
Date: Sat, 19 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647698484
