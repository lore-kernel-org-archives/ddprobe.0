Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16665137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654356899;
	h=To:Subject:From:Message-Id:Date;
	bh=M6gEQ2oMPbXSWl+SXCcgdQIweQ0RH1UyDK8dphLlsvU=;
	b=KteNeMPafwG96Fq6pyZy0J3DEBljVzpxo3fLcVX0UDUZDlD+izdXgN7ZupQCLTuO
	UHEBVkAc0jDPBc0I3OXzMfD7fzF3jlDpSzWe7+oVuEQumcXsWswHU++rGkpBKJBM1bi
	hftmTlZqN5iDL4Mj4dIw+mKEjMtz0NWZiYEDBKx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654356899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M6gEQ2oMPbXSWl+SXCcgdQIweQ0RH1UyDK8dphLlsvU=;
	b=Grtfa+w8WORufeli6Mh852NpJWCcWbYYsUN1lFEDKQFWk+hfvKkL3LYnfRx9NdDT
	5t3XcCjPqnfxCMJbVnCZ/muZsijvVSOj9d/w67lnOJnS2Z4hhAXjoSZB3iU+Yz6fOso
	Mo2ArnWZuzU2ab6KtIJqE20ktF9ROzsyb5OK13pU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f5af5a6-67a576b5-a043-4a6e-8ea9-e8e046c998fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6f4e449e8ef9d5787d376edca24994df08d2f2b8969e4887bbde606e9fa2740
Date: Sat, 4 Jun 2022 15:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654356899
