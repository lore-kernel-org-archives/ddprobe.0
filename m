Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8547C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656062212;
	h=To:Subject:From:Message-Id:Date;
	bh=l68n9VDjiJRn4qSGdrhjSsB0C9bOb5eiQNtMmn7vWq0=;
	b=dhsusi2wGB+6HkOOzOkzVlixDaerq9YsCJSMyVcrr+0y+SV8gpQm1mX/zYRd3Gi/
	qoAJt/5tGTreTUi4VdPMR1q0f5u1ngSRcGek6KWUUhax7bDSm6dQ3GlrdQPmcRcLJsZ
	TKR45CQbwF9oIrIMxaqIh/VHCKr+GgfUndgRT6n4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656062212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l68n9VDjiJRn4qSGdrhjSsB0C9bOb5eiQNtMmn7vWq0=;
	b=MgMxCNOhXdshLccG63nh6Qil/mfNBGRaAyqSHKXx5FSoh/MYa2ROnf6wE4A35hvV
	Ot4xr5KqDtgVZH320uZH6lPPfDjLJ+I15U51jY1hgkiPoJpNCoVmJWHAhOoDjjxLFzx
	E3B2HggpeYfJBRJr6t5PuPhEDrvYKNAzIIPRXvX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194fff92b-485054a8-805e-4b46-83c5-90bc7f5a71dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81239d45766ef75a240f78c4520fd6f3fa652a03330d8fbc713133e5c0569a00
Date: Fri, 24 Jun 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656062212
