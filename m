Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67896816
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647155184;
	h=To:Subject:From:Message-Id:Date;
	bh=tpvIf9mD2ELWW1XaHnqXu6GKdKXV4xog+8squ+gFrm4=;
	b=aHHxkzJrmJT/7lUkFdBlrC0qiXrRahwkY0ZGmLSJPNqz+af9BTU+XOjMB08ptq5R
	d3yejog0YmvyASm6tBJCakpM9eNmlN9L1+Ny46lzpJrW96hvFEXvSU+ZQN521TxpPs7
	iitKTh3kME93sc/aywOzPCxw0e4R19D1QtQqizYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647155184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tpvIf9mD2ELWW1XaHnqXu6GKdKXV4xog+8squ+gFrm4=;
	b=Jj6MI11d3wJ+HL8xrLqvxiHeASHIB+3yvMNJoxg1wb8nYY7HOewxAx6a62b68NTl
	GtyHcb8tqtmPs/431oxT/k+fFo0v14j6gXKs1uB46xDvndMSbY/mteH5QtuOJP13Vxh
	8FPRCGEP1Oj7KCSzaBuBMMYK+Jeg2oMXwdDr0q3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8219844e-ed68e130-5bb2-4d33-b850-c3d6c081e64b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63ea9c27b4cfa88d4eeb92fd6c83a3c27ca05db6193bd46a1a9b5ce9bfbd76a5
Date: Sun, 13 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647155184
