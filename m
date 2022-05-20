Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE57717D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 10:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653043799;
	h=To:Subject:From:Message-Id:Date;
	bh=PHL0HRXRkF22MhF3mCnnPtCs7WmLG3MWtQvpO/+4M0g=;
	b=CmaOSJeqr5JkeE6T4vq9EAcHVtlVhxRuPOQ31RHYdKZEs8vlDAhBVccHvSiu9kFq
	fXK+DlabBME4SCNyPv/Xwa9R9/PnWJ8n5Maa+9Q3CCLA/EJcHhlg8LdZk90U3nnOeF1
	Or8aOqnQ/2nDGj9AmewGcaBbXkUi1It8ejH78jPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653043799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PHL0HRXRkF22MhF3mCnnPtCs7WmLG3MWtQvpO/+4M0g=;
	b=RmZkONeZsLMlAYeMmvT5GP+3tGVWxlR6W7qrIDS/HWNnRe5eLNBGP5E23bciEILs
	fed0h40HjgorIx43HBaD6b9/pDx76Vb44+LOx90QqPqz6SXZpg1baEB2chBtnbO+od4
	UurTey1lrOOZQRf29v4EVte9w+B1nndkPasP/gXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e116a4d5-8276575d-6358-4bb4-8902-ab11e683229c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5488a849097aa26616967902d269418790ebc37901dbcdb87bac5b6767cc77e4
Date: Fri, 20 May 2022 10:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653043799
