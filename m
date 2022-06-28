Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B46368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656385012;
	h=To:Subject:From:Message-Id:Date;
	bh=RdMKQVjMh2AFfzVzImryx2keD8wGaavX0IDTkAanix0=;
	b=aCort79FKt0NEcVmjsHUeOY/y7Z7WpFfoX407iacDJREvYGst6EpoAs6nZwWXQU6
	bwlXUiZIVp3Nia6v9T8XyT0KSejO8kWLS9Qers0k9/CeujUwaOz7mCL/hOgGHzFSeJf
	EWU/a6uhSChjKa+yUXENw3nnR+rPBlISwO9V2AaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656385012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RdMKQVjMh2AFfzVzImryx2keD8wGaavX0IDTkAanix0=;
	b=ALZE6wegffoTeBqAitTL5u4n/DdU/WpGJvvGQhG8GTaVyKWRD/zIY5GH3a+AFxWo
	dk4SUNXrIncJeAvpAI72nT0TAMgDs5cwFdmlxrmArBre9qFd6SGgzzqhu1kH/0s9fUT
	9f22yHDXkqwU7mIaZvROhNdgXwGWGKCvhAhFNIvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a83d8246-f6a1c246-a41a-4a9d-941b-a1e13898645f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8be2fbba25caa1d0e56564acaa0180626b18b0f6aae1802a09be52a0b4374fd5
Date: Tue, 28 Jun 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656385012
