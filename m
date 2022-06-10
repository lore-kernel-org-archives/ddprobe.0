Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0925C7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 01:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654824419;
	h=To:Subject:From:Message-Id:Date;
	bh=4DRzdsJbXwhS3iPU8+8m1+Vbonl/M6vm16j8GSbqMto=;
	b=XW1pW36g48pRE6kMCeGyNLUmSSHMKMOD7+GwVQtUguoF1tQRLdvvNn2938XfLk8J
	/jmDhMA/0eDNrbl5etiAjN57k+uaoEN2IF/A8f2GDZ5MfTHlUo9poFwrBPqygA/AZK8
	+Gh9joqgWQ0d6FOzp23KIsFazPx+0LXvf2H3ftD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654824419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4DRzdsJbXwhS3iPU8+8m1+Vbonl/M6vm16j8GSbqMto=;
	b=Yw2zEoL3q9e0LJ7YWq/ipnnT6NqxpdMsaaygnWqj4g/j/80X8MIUhxJuRbsQqEZw
	oILniDQ2O0qhYS0WQlvNaAf9AMnNfsZjsB28wDXk+qHo6/Wo4RHB4BYF3TkT1GgxgKT
	8kbnMvB2f0QgWgKCQw+/n8S5PQhSWoJ04vIa5z2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b38c002-5774c238-c6f0-48e2-9e1b-5c9e8f9ea9ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cbfc1edcd238ba3b7f70bb61cee29a61a63baad7d83ed57d28497375cd996d8
Date: Fri, 10 Jun 2022 01:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654824419
