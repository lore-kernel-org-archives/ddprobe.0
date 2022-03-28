Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684F4182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 01:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648431358;
	h=To:Subject:From:Message-Id:Date;
	bh=E2LOdS4udH3MIS7TqaSZjvvQrL1c4Ceyb3bqWVE5oSc=;
	b=QFPVKuDO79a2Vpe0KLMnehDedGlT2z6orQH4y1Q8Ju6R2tZ+u+jeSHaRsK/mGL0r
	6QNuedKCKRTyaXTwuUjgRhKapnhaZzEofJBr91G2h0RulHwgGOzjwTU1nHZKiVFyJnZ
	EkhzYMQJLjSjNnhv2fUsH0DomwGif+4xIpF6xtGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648431358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2LOdS4udH3MIS7TqaSZjvvQrL1c4Ceyb3bqWVE5oSc=;
	b=VTUfah++p2/05nSwA+aWfU6UkkYdR3of18zxJGgysNwUvc0RKgZO1OfRjzs+lfdW
	gwAeILnPvzGP+9OdraKwHxCF4Vpl7DTWYPJcGeFoen8iVR+kCkeh2LfLzH10Xiq86oz
	6m8zaaFCRBHxuj4f03SXXevRqbPRwOCQgatXgMz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce2a61ab-6fbae335-bbec-4f7d-abe7-aca49294c1cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1deaf26ef7674d11a41ebab7672b3b3e57d665eecc4e09f1a2537115f2bfb1f
Date: Mon, 28 Mar 2022 01:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648431358
