Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967B84350
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647591984;
	h=To:Subject:From:Message-Id:Date;
	bh=iPFVmu+bSTkN5uDO77jWl08YhPMytW3rhGna51CsoGY=;
	b=SXMjOF5h8eD3IhVyA5eBJ7VRAncQaoWHUjTQQcQntiRerXZnuU2Yu6bufhGqsp5s
	B8XRUG90vX3cNmQN8UTQUDBLpH06hyb/dS4RCRi/w2fBNc+k0YjQ9SYssvc3nDuRnmU
	DKxn2VqJJ2WNFV+yqpC7dK1A9HXvr5X32AriyP4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647591984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPFVmu+bSTkN5uDO77jWl08YhPMytW3rhGna51CsoGY=;
	b=PHDs+q4m8/kbR4QqeuuHedjWRVjkwXdXHghRy+1HoJzbM8nenpQXVoyWOh1wxP3s
	SvvuJ8FXyP0fA4D+8oy7bN12OvP65QwYtvRf3lSsZY52J0fN0e8oSaEzbY10lvgeqbU
	vg0/1eAlxM0+VdAR9FF6h52MGRsdcPDceTr5dN04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c228e80-4e8ead04-2635-45ab-bbaa-f8faf16c89d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65f2149d563ee7fd0efb90fa7ed910772fcda95e7f9378cb12046f05f6bc5af
Date: Fri, 18 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647591984
