Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376CC33C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 18:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649269558;
	h=To:Subject:From:Message-Id:Date;
	bh=p1WMu5W9BSTiVe9VZgxOfBUBELkpOrhOJaS21gKtIR0=;
	b=gsornW+sP43unMrT18AKZK6MQPgAY/oI3C1fa/Jnw72Gg3dLaWvAjZmxB0QKdQzM
	rWVh2Y0U2Q/bivWHtgJobTZjECswacmaJYqalB2432IWXmc801cWyUh9VjauPUUFkb2
	qH6bxWQGO7zGCaID59kFM/I5rukHp7Sn46YgCP+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649269558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p1WMu5W9BSTiVe9VZgxOfBUBELkpOrhOJaS21gKtIR0=;
	b=drV0y1O7nITFWBFMM50Da8bmW+UJXJB6eCG/LmhToM1tVze4BuVMj7hfImnJh313
	hkbIDbAOv3rFpgS+AdGYr6WjetJe/jPLkZ6y+tOyGoxUkhYaVhUrVw8+WRIrRyGRK+h
	S1pcKGYKAA2bNsVxuwi3wiw+pC3LcEjukwlhZ0UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018000204c10-75e15e00-548c-47c6-a3c1-d598e2b3af3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 498f9f1179db691c6fe13026270b453d86ceb228645ff901b48b3bcf790e3fb1
Date: Wed, 6 Apr 2022 18:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649269558
