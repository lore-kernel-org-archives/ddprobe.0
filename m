Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE702100
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656320812;
	h=To:Subject:From:Message-Id:Date;
	bh=yQeSI/oHkpiZV+KYuM4xCiZlGXzCqVSDOKRHLtfPaBk=;
	b=Bpf0o/hyPQ/os+4R/E8YQsO+CqRNNh/TzeQkIE3sj/XwmX2diSe2IB9GxEyCwTTq
	+7nLwRaX86NsBph0GUax1gsWW3MBWQ5agkNNVExI7HLoU0uAQ3RXdbPHjn7pC+TLpjd
	xTudfRzFP7pnfSl8Y7C38bFXcKxRckbNA5kZH6ac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656320812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yQeSI/oHkpiZV+KYuM4xCiZlGXzCqVSDOKRHLtfPaBk=;
	b=gSSuQ1d05om/Gxubbl690bAGHiErRGgefCPJ5SO7krqRhKTyufHGhR2y1NlQIZ8P
	qcQr1AWoFEKRt0j29CWGGOwS+XaBqf20lXM43L2BQzeJ9x5iw/a64OrLMNpEXUiMjhf
	M0P4NYOf/E17E9UgXXzt+bryUAkN7l7XHAOwDKEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a469e514-55b00dea-169d-45a4-86ce-517267e58390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 075985bb54117b9507675e658bd084590bbce6e9471a67bb40d11e310d57502d
Date: Mon, 27 Jun 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656320812
