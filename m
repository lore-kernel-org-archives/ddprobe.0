Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF4D7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657269412;
	h=To:Subject:From:Message-Id:Date;
	bh=bmbOEN/uQa2JtArhHI1UL7b3C/dmg252sf8rh4W3yBo=;
	b=K3Em3lIccxSxmlnaDnJT3APx67dO3V3e2Zeyv6yxa4Q3RfWwUbazyUwYp3D1rlFx
	osJGHOloVHW/MyaLTkBpblyrQxobdwIfQpS1iU4Ju825dYEqOJZa8M+G57+widS857e
	72Q5sG7DY2flojic1hCd7lhQfhAwq3pscRWsBs/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657269412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bmbOEN/uQa2JtArhHI1UL7b3C/dmg252sf8rh4W3yBo=;
	b=UlAlcBvB7fPqPeToOvQApXt/La47qM61ezmacKkiIcSuJNdacTa3qEzCfaxkcVKv
	qyVdcNl8/L6MtYhT4+jMoLwoUHC0ZmJXjrWHai0TntlwgW8PgjCeOchH5Ma3mDAKDFM
	WuIpZoKjgGZP87yG0J1cwQShnV+xdl3TklLundXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dcf461c5-182e4252-1032-4b52-a3ec-0dd4be0b12c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55e67693cf96177be803e8341e4c6d2d45595a745021582be300658a91f7291a
Date: Fri, 8 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657269412
