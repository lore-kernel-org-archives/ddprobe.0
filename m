Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB3C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659388853;
	h=To:Subject:From:Message-Id:Date;
	bh=MrwpgSrMyibVS4E2d9mo1hwbW9MiVM363UPEHbnpmJ0=;
	b=B9K5szzYzMbrvQKowZTMkJioYbwePYAblSvQxdlBdNp9v+9ncybzg4HU48wSJJqz
	wMAulalDPCWPZeaUEAEJaGco6+smsDi5qVdwpbhAxeC3/sxmnBZbuR9M2x1OZDlA5Yc
	jUcFMWE+CFMhcOac8/lwzgev32cmmuevfPc/+GTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659388853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MrwpgSrMyibVS4E2d9mo1hwbW9MiVM363UPEHbnpmJ0=;
	b=idS8zcXnqh2k0cRTC02zIiiavqW54bD5CRWRUY4JcsLj3uq/lvFma823v8sAYSAJ
	KIS1Akg1KEGNHHXMd2amdVpqE5A1fP4dalHaVpqAp+AY0qt/q1z5UqqQeT/sPVZCzs8
	flkMn95ko7LyV+XDaIAsFFPQQGqMgd033fTs4+I8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b48796b-6b34a43e-5a08-4d2c-8b33-4ed151bd808e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b79ebaf345c55c74e60dee6afdd2b25e824113e4798c59832b9fb95ba791c09
Date: Mon, 1 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659388852
