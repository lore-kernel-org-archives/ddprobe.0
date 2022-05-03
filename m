Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F10117E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 07:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651562878;
	h=To:Subject:From:Message-Id:Date;
	bh=laydNrOwRdoIJ93IOsuBRBbkgnsONIABoKpNgingTAk=;
	b=UGQMHIkkqNym3Feh6AR0NvjTIEEoqCzFzDFAi9/Cylz0kCvjOsbeadHKCRTYqAp6
	skYWqsjdX9qmp6C3GKLlTVKWhtrB8N7zza0Bm/MXvevzkXQ9KBiFtBQVtlf0wVbMHfq
	VDijZgsZFqULLuQtjzF0SrjqNYSUuDaJTaLbyYIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651562878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=laydNrOwRdoIJ93IOsuBRBbkgnsONIABoKpNgingTAk=;
	b=hAWxxF5VUx4ipiYjfOB6fxUaetXMGCbDCK+kHgsnSkvCauMBAe5058iqzUesACNc
	dwJPcJbTkXhX3cWJZrlJbh84eAILHpiWjoy0IZQ1vRxLma1znhgIw2upjoB7jCnxbR8
	IT5grMIxNTKiS1d65TLUZk9ojrNYmJJS7U2rV92A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088d19530-ff91795e-2003-45c8-86c9-6bcbca71941d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4cd4dc6ef41bd0f65ca4ea854617ea23061bc7a1c1b6fece4c81cf302408f9d
Date: Tue, 3 May 2022 07:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651562878
