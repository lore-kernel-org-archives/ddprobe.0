Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3497F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659408052;
	h=To:Subject:From:Message-Id:Date;
	bh=RwH/POyD0KLnjoFgRItXfxHJxj56nQwAq9ze4mPNn+s=;
	b=R/kXYRht2MfrWVA8bWHULOhbo/BURRx46ySTtgMbxT0ImTHzg7rpM+Vzmh6nAcF6
	qCmieCaIsZ/2lPJviCe6K7ITyE7rKjwzhWbjh2H53KdryvakhjOXVfCP4LLFzmDFCcf
	36TykmiT6w7VNU4RM8dg/W3S0XthmONU/zxlxP/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659408052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RwH/POyD0KLnjoFgRItXfxHJxj56nQwAq9ze4mPNn+s=;
	b=G7IETrfSbx9Jfbp8PWSh184XN6TTqiboGpH8/uaRWU+R0Anz07OXgbK5sJtMrSjS
	+dvVm7tbDX2Px72/BYech+Tboq7s6yPtOYovw2irOkMUhQPTK2kGI3gJ8tt8p31JPXQ
	Juui4DseBNVmvNYV9tNAhbIF7kED3s2k5k0PPQ4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c6d7160-0f73a18b-f7b3-4e5f-9b58-5d89ad05ffae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d4d209a32ce21c410557d4afaadeb3f2dad6dcd9fe7edb23a04fb50ff20cce4
Date: Tue, 2 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659408052
