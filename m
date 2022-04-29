Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5271E1851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651252978;
	h=To:Subject:From:Message-Id:Date;
	bh=V8I8QVKui+dgjx7t1c70CYpWqzEYN6IoajY0WN4NNW0=;
	b=afC2KgEzbyuoYVy4khC97HwUFf7U8UJOV0wcIeaJbK1/y03se6WXMlAWTs9PHTJp
	b7rV+l/tSJIufhR6LC5iyaEdGa2ZEB9nrbFPEG7HMszltfh0aMOS5i8UCtsr4Bd1YNl
	NifulBJOd5/TaA+9RTLyf67ddFijCNM/4M+gBN3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651252978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V8I8QVKui+dgjx7t1c70CYpWqzEYN6IoajY0WN4NNW0=;
	b=Wld7K9SC9idtECHPyovZW2mx/byh4YeoZaofylMCdc8YMTB73tFjmHgH1f+nPdAx
	FlIAMo68TUapt1RlXxxfZzVv9u+tdOzez19rXMRyOOrDynEphjYy05kXx9x/qriUTWm
	AT9bNCkMFiMDtzLNb2TdFrjspJuRL9E2cyZEdnxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807658e2aa-88c07027-1756-4e18-8a96-adbc77f026c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c19d579a6866c6069d55ce4ecabfc366ca94a5a0669cddb24e6f99d3f5d600b
Date: Fri, 29 Apr 2022 17:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651252978
