Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AA266B3
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648053984;
	h=To:Subject:From:Message-Id:Date;
	bh=T+Iauo8LV3r5Zk64UQH2G7DrIQm7bknckHj2PLwPIeg=;
	b=bBb8hW84s4jDd85gqaXAuxESUW8YI88dIfGxx22bKHr588SjfJ2xlSl7vN6UMkc8
	UT0sa1O8hGrx0izelZrMpjSORjblLAauxv7uHvZDqv6fFVJKs4H0OmZyTSkgXHlNX1R
	nfn689byeV2Si/qXfzL8BOOG3h9lnFzKqp8PECE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648053984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T+Iauo8LV3r5Zk64UQH2G7DrIQm7bknckHj2PLwPIeg=;
	b=Bvaan+0RbhWVU1qlEjR1TWWBJPhgE+dc8h4GVuZjn2pmFNQ2Lp4/P7lOvo33jnlI
	/VU4QtzOIMgJgDlpyB920xPe3Cr8iBnQ4U2qCLgkBV25ann3oN/AygoMBz/g+fj7ESx
	CxvwL9e6bCC/uiTfQum757cZdVhldc/FBhL7U3ok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7ac1ddc-ce9a34dc-f6be-4201-8db1-d447a04768ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f3a0456b0872cd5d3fbbc7aa65b72c94a2eb3c26917be8c76c7526bf7b73b79
Date: Wed, 23 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648053984
