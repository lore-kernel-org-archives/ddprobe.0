Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B56B23A8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656017212;
	h=To:Subject:From:Message-Id:Date;
	bh=DT3sx6qhmR+M7fn7xSuybVg5FEkJWz5bFYlURQG4lDk=;
	b=FWhewCz/IAXwMnPAGcLC8fZVZFumP9qlK0HA4qhV7+Mlcm5FUtvzw8/jGL/Sigup
	pFc/a6iC/V9Nl80lG9Zet93EzPAD4CwAjVQn+roFqElas09/edm3wji3MomlnyDw5p9
	HQy75vacG/6J0GCB36ko8OsFzUeRCC4DVYpCffu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656017212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DT3sx6qhmR+M7fn7xSuybVg5FEkJWz5bFYlURQG4lDk=;
	b=eONQMXKbiEwR69x/OcoFxlObdh9ENHxPvitVY5QFife4YzdFi7rubVJDeIwD1HP9
	68NMtHNfoc5Teul4KNWYDI0eNNHtz+iZm/P8IsS7crQcf0zlY83EZuogMnTW6Bz871U
	VzR1KMR/nHqjnzlhXztDi3fCnfmZIrN6kuevKM7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192515383-99455f62-d31e-4f77-80cd-26b173ff0f0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8568aee077961acc2e138c9547c40ea6b0c7ca22a705563ed78fa5c4290c226b
Date: Thu, 23 Jun 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656017212
