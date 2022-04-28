Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7C6136A
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 18:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651171438;
	h=To:Subject:From:Message-Id:Date;
	bh=ZYAUEqGLWcZo4VHHfH+nHzGhuw6FwGr0ffdfUNYj9Q4=;
	b=iAT58kfCS6q0agfSa/s+lzu9zEMTuv3/bUdmxnG74Y7ozhNEaIExSZIkzHFuzBrw
	FDryP4+Tq4dHift0zxHpKwmOELH39Jbyp1l6efMMi2WrBjEjCqdRgVZQYPc4qgJBdwu
	Q70a3KsjdHhNpx4uuQAhOcIol3tPlC0i+q6dCM/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651171438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZYAUEqGLWcZo4VHHfH+nHzGhuw6FwGr0ffdfUNYj9Q4=;
	b=kCR3fzLD8jTFscdPxZxgECxy8s04a0OVU7W67l71fErsISyIA0zH26Lh53uF1bMt
	swRdHsOvn1KE3Xe29RGEHkrjuU5dUK/gqSSrjHlLoGEvzNvpToFKO/D+1SSiKWo4Al/
	564D7BvEr6S7Ub0O2FpgeCUwsrewP1QZBx0l7Sv8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180717caed0-11d83820-acc3-40c0-a51b-9f7dd69d6a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7536e4a635324b9744086c2ca480135b2b73f296dbfc170fc315be897d29afdd
Date: Thu, 28 Apr 2022 18:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651171438
