Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CED1378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648017384;
	h=To:Subject:From:Message-Id:Date;
	bh=i25SJFEFaEw3pK3b18HDlObL0xPKNYGb+nvsC0tPdVw=;
	b=k/RfSKmaWoid0w7D3pk0PZywrNq6NbEEH4ZPq96xZ6XVucqLVre5lEydPnSv/+mZ
	TUC4+vUpskQwj7er+FoxiYx3XVS/GIKm+fCOOH+whWfdGD8tkxm5mdyyCLLL7aCMeEb
	KtpuskGZ2d140D/uWfdgjghTZ6X52V1ymY+X/26U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648017384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i25SJFEFaEw3pK3b18HDlObL0xPKNYGb+nvsC0tPdVw=;
	b=GwxKiRGpCg+3z4IIe/zl3WurejQjRV3qApeeEVgFfj241nmsRUNh/UQGXq7kL6Iv
	lMZqR3WFpFLkoRwy1+xLCPkBRbzJ7hX+lwCAKGiwShFL1TiuGlBnafh8UumbsmAcyJ8
	+4tRuc2KDtlmiatU1xAsBOVrAoIB6sJYFI61yGZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb57da518-d04b9695-e28d-448f-9623-6adc3fedc12c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5ba551cafdd400a8924b36c90ed53c0abcf13fe3806437e0ae8e8ba96cbeeb7
Date: Wed, 23 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648017384
