Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93856A4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646392884;
	h=To:Subject:From:Message-Id:Date;
	bh=oHijf/9hPhTmYtAblCuxVbJgIeFgE3wAIhvj2LzAET0=;
	b=Pkt3gemzX9/16JAeCzatJEVKKGL61XnlTSu6nMDuCfahaFPxUBNTDmyLK3XREFTJ
	hUl/GQkUAwlPZ1wSiAU7SQARkv7j1XR1ZKPlQCYtarvhSHSPfZbBcESxE/BPYMRpZyz
	xRFIvuxzwmBl7+INwPy5GkV0Z72wDY7LMmpO88k8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646392884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oHijf/9hPhTmYtAblCuxVbJgIeFgE3wAIhvj2LzAET0=;
	b=bleuHssIn7fCml7WNfKfvZI6Yq8limEdTtKt1d1kFt+5IxXV9+g82CbQsrgh+pjr
	NYQuStiJqccBLqXRgtiZy1wTcfNtVE37+CNDrxNKAalb23HbXzc67kDLMRmLWPC9L4s
	w5ZRQSW0h6mP0JzwbFct8G4AI2G5M8jOpQQyBRU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54a9be19-189fc3bf-15e4-49fb-9186-03e7c8c188b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f22783ac20c3daa8170a5cbe5e1b1673f3b563f27230e01ce0ca0c22f1768dc
Date: Fri, 4 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646392884
