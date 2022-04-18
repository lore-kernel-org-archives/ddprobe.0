Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069D781E
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 22:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650322378;
	h=To:Subject:From:Message-Id:Date;
	bh=Ni6vSmaCoIKsnxr8HdH1T+laDR9RgK5W4QFjM4nnm7U=;
	b=VjEfbJo2S4BOmZsLZXQaHvaqqPpWeR9rYw2tcOK9hTF7v/2jI3dxLD07TcfkobsU
	Ny6qpLe9/XtWRjRMrUj0gbSSXPINsCfqIJWcqGIhyG6FuK1g0nAV5emNPbMOwCnCTC6
	+ihMJuiut10Lv+nPOXrLK8mrkiuGv8iL9NJeXyH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650322378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ni6vSmaCoIKsnxr8HdH1T+laDR9RgK5W4QFjM4nnm7U=;
	b=OLg6W1WT/lKXEDnEvv5o0+OrAXbBnuy9q4KUFaNNPPPKx5bWHGEz8xm+denjHeGh
	FnodeH2Bae+3X8w6GG0M0NbMOI7D/1YOLnFW3E7IXHojYOT4uy7gKjctO4qVDokXUD2
	8PVkZdo90vaDHHvNm/hTfRA3EduSQCDm/Fgn2CWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ee10e1b-47749d7c-ba63-42db-8879-663bba6ab9e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d78707d12cd6de639d882ec8148305efe86b2451414da14ad7b5976b26512fb6
Date: Mon, 18 Apr 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650322378
