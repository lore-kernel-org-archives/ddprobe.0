Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855E766A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646317584;
	h=To:Subject:From:Message-Id:Date;
	bh=jhBdfzz5f9RLbQRm8T/wbovTU//pGzuPqv3qlE5jtR4=;
	b=mswuPsLZT1mQ3H2poNPxTBLG/xgE5Uyv6PUAREOPCmdTOrdDd8K0sgBGMgQCnz9J
	DxVHrS0wuiaTtDQ+WW/SbAZpw7uZoN2tAlsjI77BtxsYst7HUZ4L/WtghPAlRw8qh5w
	Auqn2emXNUTx9yl1CmCJVCpX108cRlwGVsxmV6+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646317584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jhBdfzz5f9RLbQRm8T/wbovTU//pGzuPqv3qlE5jtR4=;
	b=I7ShqyUIXADbmWJpXwvsrXEiFItXsj5JXstIOjGQdUMvIDhqCx2SreEQcL3tq0+/
	Onk/sRdc6AC8m4SxuaiIr8dIZ0zhtL7cStZ7Bun9EmQm9aurc62Y2AAILHad/FnCkFI
	NIjL7wrqoNhyvn7D7kH9VOq/pgRXe3NZ+ikhkRac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f502cc160-4f836b8a-8b17-44be-8a25-4ff12e431518-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58c471075fc503b7b50b16ea7c696cad3029a0b756fa14f3d26e316b8a3e2c76
Date: Thu, 3 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646317584
