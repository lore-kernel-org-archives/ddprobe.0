Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3187A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659991853;
	h=To:Subject:From:Message-Id:Date;
	bh=WsMbtj4HSsyxSD9JzVFjw0H3XMzbcnAdIZaw/jFG2Js=;
	b=RrgLQYx+9Z0B2T85OMmm1hCBx4psy4/qazccP/9sRt95x1Q8NC+dxa4pMkpQsSOS
	+pBvBt8dTPXV6UgjVwQqJAeVL8KCDqBAluJTCGIx3iXNmlfGMo3zuQKUy1UCV5gp3oJ
	yvs18LyD2l4fTmbPKdVdAoHl5kAxjEkMJZfDU8OI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659991853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WsMbtj4HSsyxSD9JzVFjw0H3XMzbcnAdIZaw/jFG2Js=;
	b=Ldah5IhmrGDSj+g32qRjcuXFmYrnW3TyQT9m67Dm4DwT60QYEsp3Uaeo3px9Ej8j
	Ws1XqkP7xsRb3+qQ4BRyLxcyDF2sSNtrs0+6YwyqB5g4CP6P4UoQ1ohOCqr94mu+JVz
	fbWiMSb+DfGFaTRMLKsbkUCtQwhXsZxyHjmHNu9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f398615-5c73acb7-689f-4033-bddf-d68a2d31a6cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08d9da298316d2eb998469c8a767440d290d5bc3b7a5195ec02bd32254d278c5
Date: Mon, 8 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659991852
