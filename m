Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B8A320B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 22:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655506079;
	h=To:Subject:From:Message-Id:Date;
	bh=lvF5qqauN+eq8bUfTcXoPBygOKIR3rqGOJ3+iNB3mHk=;
	b=RtalxVkrDLqkRHFjecBXKaq2Yb/qNZUtEiWJijcVbXkxobABCZwJQSFJuZsE08NK
	QXT9fbiPrxux5OVRkp1Lm0K12OErTLcD3a9ri7cXsWZ9D7Fw+k3rUTE8EgK4g0vRf1Z
	LvzBBbVg+mMGsK5UbJSdrejtDUHYSs/0/uesRfF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655506079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lvF5qqauN+eq8bUfTcXoPBygOKIR3rqGOJ3+iNB3mHk=;
	b=ilhgRbzuir3iIazvaDc8V7SeyJ1gBED9TbPOP1YyWIxX2JZdIGhoXkz6/QYN+WBc
	44WUZiAxGNMYSpBu3y67QHsB282LXzydUuff6OVhWAFAT4W2CqpGQuSbwCuztCa2nb5
	pjbXDfkfKS9J0s4Uok95t5SrSfv4O7PU75o1gV6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018173da0e69-8887d17a-7e79-4b6f-90eb-66cb3dec1f56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 171fd80fd6e1106a1fb48195da7f4475ce131e622a977ef4009d1915ad6210eb
Date: Fri, 17 Jun 2022 22:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655506079
