Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EAD629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 11:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650196678;
	h=To:Subject:From:Message-Id:Date;
	bh=wvDVkiQvCBn/xTn+z2kCh1R8/Zln2PaU7xdl3+4DUvU=;
	b=EyozEFOVa3yC7WFBuBsEhBH8vb8PMyQP/74FVuVcG6VtBGjV7MomuQJqgqh6/Qln
	qr+Fvf13VvFb1pFeVVJ1WXw2g/iAxgcX/g1GEg4cUqRo7kWBpbFIHKVmDXo8KPM9Ab9
	/jBoHF7ISO7oHZsy+ogfWKMN+1Ftzwt+L58ME8Yw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650196678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wvDVkiQvCBn/xTn+z2kCh1R8/Zln2PaU7xdl3+4DUvU=;
	b=eA9grXtRTg7siGkJwD6GnS/AMNLNoiiBY9TRM35wSFuDGLfxOZ7NeR4VYpIbvqBA
	nRMwSpIq6LK5/c0q+uaDn7jjnxDBcWxgGenvzf8YeGbxyYjP5D9xreHqIjHN8fOoTuR
	ehnZqF6rVD6JzVxRkARTLg2bX0N/fImoH8J64NAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180376306a3-bced20ff-77b9-43eb-84b6-4616feeee300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8378b406c3b4e37ab5be8d8ab93e828a1023582a91166053b6cc91f036755843
Date: Sun, 17 Apr 2022 11:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650196678
