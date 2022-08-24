Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6686DEA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661329852;
	h=To:Subject:From:Message-Id:Date;
	bh=chXypEoVMhRUeFxBJeKH27FKPtU23ILnvNPxkgxihAw=;
	b=NPEICGtilMfIfmrJSkH/e2Zkh/byxxwtyUyS+Gi9cvfjswCxBqKSnmGb25WbRebH
	TT76mdXdRIDVdy0UkLLEc4B6TlyjOkR1+9Z2HAGqGlrc4QeEmbVWGsZExYos/oMrj7p
	BTALBXNkyT/NKq898doS7Mi4gLI7jzuhvCL8m+nY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661329852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=chXypEoVMhRUeFxBJeKH27FKPtU23ILnvNPxkgxihAw=;
	b=R7fUSHMTEEzwGWLuuQ0qWrYZ9ZdsFGjmPTm0AeFsAK0pCJi3qWvG7XvfYuow7ie6
	eIHKkPsqx0oaeeAnRp7INrGMwVOtLLW9IdTT8Pz1ljwuh50dH9Cwl0oWqtfQvppHbGW
	UBqdjO82cDnzmZ2i2RjeREREfP0dTjknddUQGYqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cef9c85e-7a8b30fa-73de-485f-a848-905b9789602e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45d10e8d63b4bb9c3073f449a57e3eb68d2a073675bf64f1ef5a652b7a00368a
Date: Wed, 24 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661329852
