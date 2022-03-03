Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BE336B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646267485;
	h=To:Subject:From:Message-Id:Date;
	bh=Lwygq0DdHj9JxSKOR8AdiAz0mdpYu/Tsg5m0pS/MLYk=;
	b=TJLS7i3PR/6LtBwwuoquFOfVwcbhy7Z1jPmuwFy/WsC0Yco79mtEB2S/EgwA5XTt
	arelf519xCuYjdI5V4v8Xok83tXpTxgZT38g7D/otjWTzmCHY67IhHNvAhf+vFuu1Jr
	bMAtn7NXtHXOPC3Kh4XBYMsaRqEm5EXIWLtXvY5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646267485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lwygq0DdHj9JxSKOR8AdiAz0mdpYu/Tsg5m0pS/MLYk=;
	b=lxasCTNtyb7Rc2SlnpkoscJXgHbjkddZ4AWscv+fkYVCYmCJ8uGpDMt4T/5rzkRY
	mz/pvy7Nl7oYT+zsILApUPddpw4W/NcXSQfA8govUfYMqpRWs3VS5uNVABVUEh/HpII
	V/hHxsZtM1V5QvSsy3Zdt3nuLeT2zfd1AOs6K4bM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4d304ab3-5fe25386-00f1-4452-810a-971cad0aa66a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28867dacbce002866d1af2d1235114a37717673266d4bcab45937859896aadbc
Date: Thu, 3 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646267484
