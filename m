Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F374C9A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657922812;
	h=To:Subject:From:Message-Id:Date;
	bh=i2AuWIlDryPeEv0+tVV358hUPRjK5cS/ogIG6zzwueg=;
	b=IB63xdiSKtfLMHKkYJiOd9a73j8hCQclCmF0B7QBEDk/Cw9ly5E9wqOuHabvPS02
	UZkdc8dCumyXsCLD4e9512aV7SXlXGmQon33vBICSOamBrvBxMqRrZ4ivHzFTgFcI2A
	HesCS3f8ZoSeneusc0rxtSmM+hG7EXM6c9EgYudM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657922812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i2AuWIlDryPeEv0+tVV358hUPRjK5cS/ogIG6zzwueg=;
	b=Eu8YVO9SMgKpoXttAmoOUCO3LzvH4XHvt3uZsEK9xABgzxdyWy6gBKp0Ux5yvxzc
	M5tGPqI/dbimMDkoA15kJoaSr5t3WrgSt6VG7Kg1JoAEwPPIjdHfYX3D9Oy7TnsQHGd
	iEWZC9ad5QVTqn9DvZ9pnAqp07k9aRBWLKewxzzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203e6797f-a4a3c0d0-838e-4776-8c85-6890162aee4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b3e32321bc56e10850d21cb28e61931066e3443daafeddb1ccb3f730caca911
Date: Fri, 15 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657922812
