Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15F123CA
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 05:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649826598;
	h=To:Subject:From:Message-Id:Date;
	bh=Crx/IdvdyiYhlBDpOx8qEyDVPn1IkfDo+PYV/VlMB+0=;
	b=jaQP2CXtjHvlECej1VvyW6rJIPsRZcRFaTgVdeTP1e57f7UopkClHtIsvH5aKUba
	J7Smy+0X8YUukPG//mbH9nfngwOReQAwcMOvrlQfrG33vWLPoHMm94IHA4uh5zIyvfw
	fPotAfp57DyhlwSzMmTxwO6lpVJZ4KQj2vRa7NXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649826598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Crx/IdvdyiYhlBDpOx8qEyDVPn1IkfDo+PYV/VlMB+0=;
	b=CycZ/CZOcqnIkPw58n4dOU/4pA037dltw/StpcCxeuTUNETSJes4acK840CoACal
	KO10mw9eN6mPEowL5SROGZQZeRBeqciAY2bBLL3PLre7HYKuP5NxxHXFjLMWftUi7u1
	BFYeHec18h03+PQXmwa8QINZ8+DNIyfW1cyeh6iU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021540d65-068d06d4-c687-4363-ae2d-29442d2edb6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9102d92a659e1bf8f347075267fff69ab94f1ea5df0747590517e6b05713deab
Date: Wed, 13 Apr 2022 05:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649826598
