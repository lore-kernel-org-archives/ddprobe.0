Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ACC10ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648092778;
	h=To:Subject:From:Message-Id:Date;
	bh=jZVk7VSMyz02XY+PME0mQ4YQKgAzSdBqIwHAdUpzMpI=;
	b=JCk1u6FiGjuFRm/YzuAOvjy2wlGJ8KcXT0nQRVzu2uqB8McxduxpXfdd9dNhjZau
	mgwIGmCq87LCmLcf+IE4xrfDYZSgf2FXyYq+FcmKMRmzL/2wh+CoxoCeSNZmUEj7/qf
	ZNhpCT3M6PJcrVuUa181QIRq5bKl2MTPSxbfBuQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648092778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jZVk7VSMyz02XY+PME0mQ4YQKgAzSdBqIwHAdUpzMpI=;
	b=CvyylYlxUB9KuF7b5yCYFIKAcqVN0zkaG1vx1tXskVXK63VtnMPtN433rzaC/tRa
	xBA2Qpjl7aJ9SRU/WI8GQibGkHG/nvEr8nQH2MMeRsJeCwaGwPhpCtf/UGgKdoxuisU
	evsGed+fQ6NVX0rcp0Rsnon63X+zEXI2QJgtefzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9fc0f42-0bce4f50-a95b-4f3b-9f05-09555cc2209c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9d1c5503e2873ac791f115e95f5642201ab6c4096184b72dfdaa0b8140ae2dc
Date: Thu, 24 Mar 2022 03:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648092778
