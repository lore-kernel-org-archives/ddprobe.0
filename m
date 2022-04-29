Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531AB1FA4
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651271278;
	h=To:Subject:From:Message-Id:Date;
	bh=Our1P/8CtfiiRKwrPC38OjcXwS2MbmexnRnjP/pSr6I=;
	b=d+XtOe1ve0U6YUoRR2qt7a0xBwkIDnI3bbmRJvke1naqjn5T6gEjCUFnA3PDWANC
	9n6Ow4AxYI598/UJ6V2siDXJ8lpdThmSGwu6awRQsSYOABvuJnCzNs8YOlBGcGKVOWX
	16HRdUiom5Ho2b00rt3zsQ5bWYSzN79eER8WAx8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651271278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Our1P/8CtfiiRKwrPC38OjcXwS2MbmexnRnjP/pSr6I=;
	b=b7myNVUA6PcYRIzfCNJNtSaqpnaKapULiId3c6+qIFeGRxfPVFrrh1cxomQq8mb4
	YZUmVOgF0L6Y033DfFuOOIJMlmi/agve5jO9NteeyJ7qMz+zY2PiwHDARelZEXsTpR1
	+mKHqthe0TOwsxjQjSpsVCLTTjdOKYGmE4zpIjO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077701ecc-90c7db75-13e4-4fa4-9bbe-26feb5a8ed4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3707ba379fdd6000e73635b4bc63654b224ab90aa013be696d3efb324a0962a1
Date: Fri, 29 Apr 2022 22:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651271278
