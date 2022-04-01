Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B927C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648811099;
	h=To:Subject:From:Message-Id:Date;
	bh=BnSwY7l75H5qCKtz7VRnnLL3pWheRky0Tb09xuphUk4=;
	b=XCh6CJyg5mXB8aNMzNP/AVLVQHeEa88yhgIC1rfkoLGuOC9YYW85Ch0qERn1bqZA
	4E09xfTLtTFCK3ckUfAVnF7IKxIyZvV2bQ3JpCStb2EumQtDcTBRkDG+EgOGYhOoWuF
	MyC3k993bXwz11I+96jRQr1hpsFhgpCM5caq9kSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648811099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BnSwY7l75H5qCKtz7VRnnLL3pWheRky0Tb09xuphUk4=;
	b=YjffZg2YBGNWzTtTSp9UtlZpoyNaSEjCNO8laKeiHUKl/C1BJ18EXYDlBPxoeSBn
	GfPPhPlJZ+l11NQuGvNiNivStNnIFVTIokJDIfMVwWfMrjjpD6bxWT3h7KZ8nGt2znA
	Ih0U2ibLaU8PK5p8ljFqibncIor8HGL1kW1/oP3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe4ccc0a4-8f2e9422-4485-433c-8475-9ae7fe5d3800-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91c386a38a9c74a5d680cb5d889f34605eae93f492ea81e53de4610937bfb086
Date: Fri, 1 Apr 2022 11:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648811098
