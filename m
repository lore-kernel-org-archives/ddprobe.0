Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B0B1841
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 15:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653580019;
	h=To:Subject:From:Message-Id:Date;
	bh=GdKGoXq2HiGfF19Xg3pR2dpvDfACI71wbQQ9jjYRXLs=;
	b=Xa/tDAuIMWPc1VHEAeVyfMPLXqDg0HqBkzwaxtHh/DZouQ1/d6JFLTI7LHSQX0iH
	xONXpsOj3fn9VP1ot89/1llOt1fToKO5Y8uX0S7HVdZGcew86VwH2OFpj+h+zPq+WzR
	bQ50uz2bICk6en7kcKKWsZNWVSKrA+gIX2zjQeDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653580019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GdKGoXq2HiGfF19Xg3pR2dpvDfACI71wbQQ9jjYRXLs=;
	b=TZK+KvKgg+1jBT3dJgVzDhR9/qNPnNt2s+CVrx7A/bGKBREnowu4/v9WXGdz0oDM
	ct6mK3RsTefXeHlpdP0GuFIVBhwiXNhxEGGwHMYtsP3GXgYtRHAGaulnSZ0BffuFql+
	ZpY1LCiTKEpEPEtvvOPz4hbW9PlxwFApgQVQyPp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181010cb653-ee7fa99b-417e-439e-9975-84ef6c068284-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b0e17166a76599e3ab25d22f72a10ddd5d7c89c046959b3dbd3411ccc4308e8
Date: Thu, 26 May 2022 15:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653580019
