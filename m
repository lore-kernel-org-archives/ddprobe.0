Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D9F7F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 22:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651963978;
	h=To:Subject:From:Message-Id:Date;
	bh=fNJ/zk2PyH3PrkLHBNz/9F6ihJi2wAMq48GIz70BJlM=;
	b=eECx579MnibDusSjz9hRlQnQlz3bQ/X7itzoGDqSYosDO7U0+GvvdxjvKvQnSfGh
	fP9AbcsCgrkoVR3Fjv3h5/UOMMc9Ut9n8yMdCq1JHHeq9sVtDS6SnUblErcZE07HQId
	EGLJpJCtwrqIOCxJmFVaiUH/l1Z/kXhxsH0vEr4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651963978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fNJ/zk2PyH3PrkLHBNz/9F6ihJi2wAMq48GIz70BJlM=;
	b=adHwgyh/mMO4V2I7QJa9XEKc+EeEdllnNPLjt/sWeOxMaoYLvT7ZkKx2jlm6bCdA
	Q+bf14Ap7wm6k8HHFGZrCaRgChnhKbt64TLJKr3Us75Vw/+mvI6Bg240C9ceQVkSms2
	Pmjb+mm1IAKhNbzkAFOB6PbADf4QaGlRegio4NTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0b9e224-212afb05-6d77-447f-beda-be9411ec8963-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fcfb253b9ae6e11fd8ce864b23708d8a3cb75ac00d08164add7e07bf14bc741
Date: Sat, 7 May 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651963978
