Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954403674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646652984;
	h=To:Subject:From:Message-Id:Date;
	bh=4jbNt2nKFFbPNE1zCi8kTPji1tdjgKZyOrG8T80GVaE=;
	b=Y6lnKw4GADR/r5l6Q0jKoNrybX5iKm5b0jX5qLsMCTxb9KBc66whM31bsPnrN/e3
	M0nzKfNJ4muhcpoYALYuJfWCfTuQxb4DlVjXVOixIBPfur0xUck1cY8iGwpvveQCHdH
	r3sLcXa8LXMWO1a5VmqYfrYRZzPYpGQ6ufQHglbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646652984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4jbNt2nKFFbPNE1zCi8kTPji1tdjgKZyOrG8T80GVaE=;
	b=aIJY1VkwRK4+a0j26ttDjiQkbx3m5SbWxZTnzHp0LmL5QeB337blFqWF+ntH8I0n
	5xoVrOD3L4Wo7/12dxaUvFM3qBXc5FDBhwEPRFxsG1XUvAyqL+xsylWgz6JrRXc/QT2
	CjJWNMgldUpFu4+NgGxoDzcz5c+X0LexRPV2lD0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f642a8da4-e4fbdbd6-e35c-4755-ae18-2149053395e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94a38c0fa093964a0f2063f292d43ae29e26788549e4902c2cbe3dc42b7afd67
Date: Mon, 7 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646652984
